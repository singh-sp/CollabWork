//
//  ViewController.swift
//  VendingMachine
//
//  Created by Abhiraj Bhatia on 2017-02-25.
//  Copyright © 2017 Test Org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentProduct: Product? = nil
    
    @IBOutlet weak var CurrentPriceLabel: UILabel!
    
    @IBAction func item1(_ sender: Any) {
       UpdatePrice(prod: GetProductByUPC(upc: 1))
    }
    
    @IBAction func item2(_ sender: Any) {
        UpdatePrice(prod: GetProductByUPC(upc: 2))
    }
    
    @IBAction func item3(_ sender: Any) {
        UpdatePrice(prod: GetProductByUPC(upc: 3))
    }
    
    @IBAction func item4(_ sender: Any) {
        UpdatePrice(prod: GetProductByUPC(upc: 4))
    }
    
    func GetProductByUPC(upc: Int) -> Product{
        return ProductsProvider.Products.first(where: {$0.upc == upc})!
    }
    
    func UpdatePrice(prod: Product){
        currentProduct = prod;
        CurrentPriceLabel.text = prod.GetFormattedPrice()
    }
    
    @IBAction func buyBtn(_ sender: Any) {
        // create the alert
        let currenPrice: Float = (currentProduct?.price)!;
        
        let msg = currenPrice < 1 ? "Please select an item!" :
            "Are you sure? " + (currentProduct?.GetFormattedPrice())!
        
        
        let alert = UIAlertController(title: "Purchase Confirmation", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        
        if(currenPrice > 0){
            // add an action (button)
            alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: { _ -> Void in
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController2")
            self.present(nextViewController, animated: true, completion: nil)
            
        }))
            
            
            alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: nil))
        }else{
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))

        }
       
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
    }

