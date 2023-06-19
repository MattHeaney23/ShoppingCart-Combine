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
    
    var body: some View {
        
        VStack {
            List(currentStock.items) { item in
                ItemView(item: item)
            }
            Text("Total: \(cart.totalPrice, specifier: "%.2f")")
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
