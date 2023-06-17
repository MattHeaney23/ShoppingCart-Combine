//
//  ShoppingItem.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import Foundation

struct ShoppingItem {

    /// A unique ID for the item
    let id = UUID()
    
    /// The items name
    let name: String
    
    /// The price of the item, in GBP for this showcase
    let price: Float
    
    /// The thumbnail of the image. For this showcase, these are locally stored images
    let imageName: String
}
