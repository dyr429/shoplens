//
//  ShoppingCartViewController.swift
//  ShopLens
//
//  Created by Alex Ding on 11/8/17.
//  Copyright © 2017 Alex Ding. All rights reserved.
//

import UIKit

class ShoppingCartViewController: UIViewController {
    
    override func viewDidLoad() {
        saveData(value:String(describing: self))

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        saveData(value:String(describing: self))

        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
