//
//  ImageSheetQ1Q2View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 10/10/24.
//

import SwiftUI

struct ImageSheetQ21View: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    let item: DataItem
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Text(item.code21)
                .padding(5)
        }
        .frame(height: 700)
        .padding()
    }
}

#Preview {
    ImageSheetQ21View(item: DataItem.example)
}
