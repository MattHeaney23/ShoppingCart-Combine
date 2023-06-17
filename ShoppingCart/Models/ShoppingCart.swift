//
//  ShoppingCart.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import Foundation
import SwiftUI

class ShoppingCart: ObservableObject {

    @Published var items: [ShoppingItem] = []
    
    func addItemToCart(_ item: ShoppingItem) {
        items.append(item)
    }
    
    func removeItemFromCart(_ item: ShoppingItem) {
        if let indexToRemove = items.firstIndex(where: { $0.id == item.id }) {
            items.remove(at: indexToRemove)
        }
    }
    
    func getItemCountInCart(_ item: ShoppingItem) -> Int {
        items.filter { $0.id == item.id }.count
    }
}
