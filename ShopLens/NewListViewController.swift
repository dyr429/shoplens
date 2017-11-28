//
//  NewListViewController.swift
//  ShopLens
//
//  Created by Alex Ding on 11/12/17.
//  Copyright © 2017 Alex Ding. All rights reserved.
//

import UIKit

class NewListViewController: UIViewController {
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var catImage: UIImageView!
    
    override func viewDidLoad() {
        saveData(value:String(describing: self))

        super.viewDidLoad()
        dogImage.alpha = 0.5
        catImage.alpha = 0.5
        let tapGestureRecognizerForDog = UITapGestureRecognizer(target: self, action: #selector(dogimageTapped(tapGestureRecognizer:)))
        
         let tapGestureRecognizerForCat = UITapGestureRecognizer(target: self, action: #selector(catimageTapped(tapGestureRecognizer:)))
        
        dogImage.isUserInteractionEnabled = true
        catImage.isUserInteractionEnabled = true
        dogImage.addGestureRecognizer(tapGestureRecognizerForDog)
        catImage.addGestureRecognizer(tapGestureRecognizerForCat)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func dogimageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        saveData(value:String(describing: self))

        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        tappedImage.alpha = 1.0
    }
    
    @objc func catimageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        saveData(value:String(describing: self))

        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        tappedImage.alpha = 1.0
    }
    
    
}

