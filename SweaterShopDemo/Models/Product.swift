//
//  Product.swift
//  SweaterShopDemo
//
//  Created by Emin Kavak on 02/09/2023.
//

import Foundation


struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Colorfuly Shirt", image: "product_0", price: 54),
                   Product(name: "Black Shirt", image: "product_1", price: 104),
                   Product(name: "Black nd White Shirt", image: "product_2", price: 24),
                   Product(name: "Black TShirt", image: "product_3", price: 64)]
