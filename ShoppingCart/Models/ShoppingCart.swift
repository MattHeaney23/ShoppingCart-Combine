//
//  ShoppingCart.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import Combine
import Foundation
import SwiftUI

class ShoppingCart: ObservableObject {

    @Published var items: [ShoppingItem] = []
    @Published var totalPrice: Double = 0.0
    
    private var subscribers = Set<AnyCancellable>()
    
    init() {
        prepareSubscriptions()
    }
    
    private func prepareSubscriptions() {
        $items
            .map { $0.reduce(0, { $0 + $1.price }) }
            .assign(to: \.totalPrice, on: self)
            .store(in: &subscribers)
    }
    
    func addItemToCart(_ item: ShoppingItem) {
        items.append(item)
    }
    
    func removeItemFromCart(_ item: ShoppingItem) {
        if let indexToRemove = items.firstIndex(where: { $0.id == item.id }) {
            items.remove(at: indexToRemove)
        }
    }
    
    func getItemCountInCart(_ item: ShoppingItem) -> Int {
        items.filter { $0.name == item.name }.count
    }
}
