//
//  ItemDetailsViewController.swift
//  ShopLens
//
//  Created by Alex Ding on 11/9/17.
//  Copyright © 2017 Alex Ding. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
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
        
        if motion == .motionShake {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Tab") as! UITabBarController
            self.present(nextViewController, animated: true, completion: nil)
        }
    }
    
}
