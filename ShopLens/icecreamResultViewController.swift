//
//  icecreamResultViewController.swift
//  ShopLens
//
//  Created by Alex Ding on 11/12/17.
//  Copyright © 2017 Alex Ding. All rights reserved.
//
import UIKit

class icecreamResultViewController: UIViewController {
    
    
    @IBAction func addToCart(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Adding to cart",
                                                message: "how many do you want?", preferredStyle: .alert)
        
        alertController.addTextField {
            (textField: UITextField!) -> Void in
            textField.placeholder = "1"
            textField.isSecureTextEntry = false
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
