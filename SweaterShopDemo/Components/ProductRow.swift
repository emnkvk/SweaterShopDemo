//
//  ProductRow.swift
//  SweaterShopDemo
//
//  Created by Emin Kavak on 02/09/2023.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManager
    var product : Product
    var body: some View {
        HStack(spacing : 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10){
                Text("\(product.id)")
                    .font(.subheadline)
                Text(product.name)
                    .bold()
                Text("£\(product.price)")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                    
                }
            
          
           
        }
        
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
       /*/ HStack(alignment: .bottom){
            Image(systemName: "xmark.bin.circle")
                .onTapGesture {
                    cartManager.clearCart()                }
        }
        .padding(.bottom)
        .frame(width: 40,height: 40)*/
    }
    
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[1])
            .environmentObject(CartManager())
    }
}
