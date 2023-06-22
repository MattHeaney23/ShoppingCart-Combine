//
//  Double+DisplayableCurrency.swift
//  ShoppingCart
//
//  Created by Matt on 22/06/2023.
//

import Foundation

extension Double {
    ///Returns the double in as price. In this example, this is locked to GBP, as all prices are hardcoded in this example project
    func displayableCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_UK")
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
