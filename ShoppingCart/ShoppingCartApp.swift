//
//  ShoppingCartApp.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import SwiftUI

@main
struct ShoppingCartApp: App {
    
    @StateObject var cart = ShoppingCart()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ShopView()
                    .navigationTitle("Splurge")
            }
            .environmentObject(cart)
        }
    }
}
