//
//  CurrentStock.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import Foundation

/// The date for the store, which is mocked locally for this showcase.
class CurrentStock {
    
    ///An array of ShoppingItem objects, representing the current items available in the store
    let items: [ShoppingItem] = [
        ShoppingItem(name: "Smart Contact Lens",
                     price: 1599.00,
                     imageName: "smartContactLens"),
        ShoppingItem(name: "Invisible Drone",
                     price: 1199.00,
                     imageName: "invisibleDrone"),
        ShoppingItem(name: "Teleportation Device",
                     price: 1000000.00,
                     imageName: "teleportationDevice"),
        ShoppingItem(name: "Time Machine (No Warranty)",
                     price: 9999999.99,
                     imageName: "timeMachine"),
        ShoppingItem(name: "Thought Recorder",
                     price: 5499.00,
                     imageName: "thoughtRecorder"),
        ShoppingItem(name: "Holographic Personal Trainer",
                     price: 1999.00,
                     imageName: "holographicTrainer"),
        ShoppingItem(name: "Life-Like AI Pet",
                     price: 499.00,
                     imageName: "aiPet")
    ]
}
