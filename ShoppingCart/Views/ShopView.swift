//
//  ShopView.swift
//  ShoppingCart
//
//  Created by Matt on 17/06/2023.
//

import SwiftUI

struct ShopView: View {
    
    //MARK: Dependancies
    private let currentStock = CurrentStock()
    @EnvironmentObject var cart: ShoppingCart
    
    //MARK: Grid Preparation
    let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]

    //MARK: Body
    var body: some View {
        VStack(spacing: 0) {
            itemGridComponent()
            Divider()
            totalFooterComponent()
        }
    }
    
    //MARK: Views
    func itemGridComponent() -> some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(currentStock.items) { item in
                    ItemView(item: item)
                }
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 16)
        }
    }
    
    func totalFooterComponent() -> some View {
        Text("Total: \(cart.totalPrice.displayableCurrency())")
            .frame(maxWidth: .infinity)
            .frame(height: 20)
            .padding(16)
            .background(Color.gray.opacity(0.05))
    }
}

//MARK: Preview
struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
