//
//  ItemView.swift
//  ShoppingCart
//
//  Created by Matt on 18/06/2023.
//

import SwiftUI

struct ItemView: View {
    
    let item: ShoppingItem
    @EnvironmentObject var cart: ShoppingCart
    
    var body: some View {
    
        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()

            VStack {
                
                Text(item.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("£\(item.price, specifier: "%.2f")")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {

                    Button {
                        cart.removeItemFromCart(item)
                    } label: {
                        Image(systemName: "minus.circle")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding(8)
                    }

                    Text("\(cart.getItemCountInCart(item))")

                    Button {
                        cart.addItemToCart(item)
                    } label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding(8)
                    }
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                
            }
        }
    }
}
