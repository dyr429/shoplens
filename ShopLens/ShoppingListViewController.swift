//
//  SecondViewController.swift
//  ShopLens
//
//  Created by Alex Ding on 11/7/17.
//  Copyright © 2017 Alex Ding. All rights reserved.
//

import UIKit

class ShoppingListViewController: UIViewController {

    override func viewDidLoad() {
        saveData(value:String(describing: self))

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

