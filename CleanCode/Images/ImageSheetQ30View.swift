//
//  ImageSheetQ1Q2View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 10/10/24.
//

import SwiftUI

struct ImageSheetQ30View: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    let item: MenuItem
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Text("This is a very long text that will require horizontal scrolling to be fully visible.\nThis is a very long text that will require horizontal scrolling to be fully visible.\nThis is a very long text that will require horizontal scrolling to be fully visible.\nThis is a very long text that will require horizontal scrolling to be fully visible.\nThis is a very long text that will require horizontal scrolling to be fully visible.\nThis is a very long text that will require horizontal scrolling to be fully visible.")
                .padding(5)
        }
        .frame(height: 700)
        .padding()
    }
}

#Preview {
    ImageSheetQ30View(item: MenuItem.example)
}
