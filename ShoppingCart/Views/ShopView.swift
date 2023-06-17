//
//  ShopView.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import SwiftUI

struct ShopView: View {
    
    let currentStock = CurrentStock()
    var cart = ShoppingCart()
    
    var body: some View {
        VStack {
            Text("Hello!")
        }
        .padding()
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
