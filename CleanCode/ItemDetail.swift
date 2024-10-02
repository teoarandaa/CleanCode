//
//  ItemDetail.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 24/9/24.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
    var body: some View {
        Text("\(item.ask1)")
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example)
    }
}
