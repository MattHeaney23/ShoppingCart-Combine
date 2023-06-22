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
    
        VStack(spacing: 0) {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                .clipped()
            
            VStack {
                Text(item.name)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Text("\(item.price.displayableCurrency())")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .frame(height: 80)
                
                Divider()
            
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
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 30)
        }
        .background(.white)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 2)
        }
        .cornerRadius(20)
    }
}
