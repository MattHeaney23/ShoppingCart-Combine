//
//  ItemView.swift
//  ShoppingCart
//
//  Created by Matt on 18/06/2023.
//

import SwiftUI

struct ItemView: View {
    
    //MARK: Dependancies
    let item: ShoppingItem
    @EnvironmentObject var cart: ShoppingCart
    
    //MARK: Body
    var body: some View {
        VStack(spacing: 0) {
            itemImageComponent()
            itemInfoComponent()
            Divider()
            addOrRemoveItemComponent()
        }
        .background(.white)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 2)
        }
        .cornerRadius(20)
    }
    
    //MARK: Views
    func itemImageComponent() -> some View {
        Image(item.imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .clipped()
            .contentShape(Rectangle())
    }
    
    func itemInfoComponent() -> some View {
        VStack {
            Text(item.name)
                .bold()
                .frame(maxWidth: .infinity, alignment: .center)
            
            Text("\(item.price.displayableCurrency())")
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .multilineTextAlignment(.center)
        .frame(height: 80)
    }
    
    func addOrRemoveItemComponent() -> some View {
        HStack {
            Button {
                cart.removeItemFromCart(item)
            } label: {
                buttonImage(systemName: "minus.circle")
            }
            
            Text("\(cart.getItemCountInCart(item))")

            Button {
                cart.addItemToCart(item)
            } label: {
                buttonImage(systemName: "plus.circle")
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(height: 30)
    }
    
    func buttonImage(systemName: String) -> some View {
        Image(systemName: systemName)
            .resizable()
            .frame(width: 15, height: 15)
            .padding(8)
    }
}
