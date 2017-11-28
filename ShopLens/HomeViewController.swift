//
//  FirstViewController.swift
//  ShopLens
//
//  Created by Alex Ding on 11/7/17.
//  Copyright © 2017 Alex Ding. All rights reserved.
//

import UIKit
import Foundation.NSDate

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.becomeFirstResponder()
        searchBar.showsScopeBar = true
        searchBar.delegate = self as? UISearchBarDelegate
        // Do any additional setup after loading the view, typically from a nib.
        
        saveData(value:String(describing: self))
    }
    
    @IBAction func search(_ sender: UIButton) {
        saveData(value:String(describing: self))

        if("cereal".caseInsensitiveCompare(searchBar.text!) == ComparisonResult.orderedSame){
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "cerealResult") as! cerealResultViewController
            self.present(nextViewController, animated: true, completion: nil)
        }else{
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "icecreamResult") as! icecreamResultViewController
            self.present(nextViewController, animated: true, completion: nil)
     
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool {

        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        saveData(value:String(describing: self))
        
        if motion == .motionShake {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ItemDetail") as! ItemDetailsViewController
            self.present(nextViewController, animated: true, completion: nil)
        }
    }

}


