//
//  Product.swift
//  VendingMachine
//
//  Created by SanMac on 2017-03-05.
//  Copyright © 2017 Test Org. All rights reserved.
//

import Foundation

class Product{
    
    var name: String = "";
    var price: Float = 0.0;
    var upc: Int = -1;
    
    init(name: String, price: Float, upc: Int) {
        self.name = name;
        self.price = price;
        self.upc = upc;
    }
    
    func GetFormattedPrice() -> String{
        return String(format: "%.2f", self.price)
    }
    
}
