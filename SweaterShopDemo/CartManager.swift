//
//  CartManager.swift
//  SweaterShopDemo
//
//  Created by Emin Kavak on 02/09/2023.
//

import Foundation


class CartManager : ObservableObject{
    @Published private(set) var products:[Product] = []
    @Published private(set) var total: Int = 0
    @Published private(set) var numberOfItems: Int = 0
    
    
    func addToCart(product:Product){
        products.append(product)
        total += product.price
        numberOfItems += 1
    }
    
    func removeFromCart(product:Product){
        
        //products = products.filter{$0.id != product.id}
        
        //total -= product.price
        
        if let index = products.firstIndex(where: { $0.id == product.id }) {
              let removedProduct = products.remove(at: index)
              total -= removedProduct.price
              numberOfItems -= 1
          }
    }
    
    func clearCart() {
        products.removeAll()
        total = 0
        numberOfItems = 0
    }
    
    
    func printCart() {
        print("Products in your cart:")
        for product in products {
            print("\(product.name) - \(product.price) £")
        }
        print("Subtotal Deleted: \(total) £")
    }

}
