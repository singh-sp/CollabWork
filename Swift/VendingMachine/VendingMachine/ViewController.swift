//
//  ViewController.swift
//  VendingMachine
//
//  Created by Abhiraj Bhatia on 2017-02-25.
//  Copyright © 2017 Test Org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.imageTapped(gesture:)))
        
        // add it to the image view;
        VendItem1.addGestureRecognizer(tapGesture)
        // make sure imageView can be interacted with by user
        VendItem1.isUserInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var VendItem1: UIImageView!
    @IBOutlet weak var VendItem2: UIImageView!
    
    @IBOutlet weak var CurrentPriceLabel: UILabel!
    
    func imageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            CurrentPriceLabel.text = "Rs. 10"
            //Here you can initiate your new ViewController
            
        }
    }
}

