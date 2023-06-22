//
//  ShopView.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import SwiftUI

struct ShopView: View {
    
    let currentStock = CurrentStock()
    @EnvironmentObject var cart: ShoppingCart
    
    let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]
    
    var body: some View {
        VStack(spacing: 0) {
         
            ScrollView {
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(currentStock.items) { item in
                        ItemView(item: item)
                    }
                }
                .padding(.horizontal, 8)
                .padding(.bottom, 16)
                
            }
            
            Divider()
    
            Text("Total: \(cart.totalPrice.displayableCurrency())")
                .frame(maxWidth: .infinity)
                .frame(height: 20)
                .padding(16)
                .background(Color.gray.opacity(0.05))
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
