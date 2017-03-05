//
//  ProductsProvider.swift
//  VendingMachine
//
//  Created by SanMac on 2017-03-05.
//  Copyright © 2017 Test Org. All rights reserved.
//

import Foundation

class ProductsProvider{
    
    static var Products = { () -> [Product] in
        var Products = [Product]();
        Products.append(Product(name: "Aalu", price: 10.0, upc: 1));
        Products.append(Product(name: "Gobi", price: 20.0, upc: 2));
        Products.append(Product(name: "Pyaaj", price: 30.0, upc: 3));
        Products.append(Product(name: "Tamatar", price: 40.0, upc: 4));
        return Products;
    }()
    
}
