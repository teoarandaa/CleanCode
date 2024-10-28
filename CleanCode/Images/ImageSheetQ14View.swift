//
//  ImageSheetQ1Q2View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 10/10/24.
//

import SwiftUI

struct ImageSheetQ14View: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    let item: DataItem
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Text(item.code14)
                .padding(5)
        }
        .frame(height: 700)
        .padding()
    }
}

#Preview {
    ImageSheetQ14View(item: DataItem.example)
}
