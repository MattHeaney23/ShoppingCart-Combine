//
//  ItemView.swift
//  ShoppingCart
//
//  Created by Matt on 18/06/2023.
//

import SwiftUI

struct ItemView: View {
    
    let item: ShoppingItem
    
    var body: some View {
    
        HStack {
            Image(item.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .scaledToFit()
            VStack {
                
                Text(item.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("£\(item.price)")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: .init(name: "iPhone", price: 999.99, imageName: "iPhone15"))
    }
}
