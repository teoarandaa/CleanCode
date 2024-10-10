//
//  ImageSheetQ1Q2View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 10/10/24.
//

import SwiftUI

struct ImageSheetQ1Q2View: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    let item: MenuItem
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 300, height: 50) // Fixed size for the rectangle
            .cornerRadius(10) // Round the corners
            .overlay(
                ScrollView(.horizontal, showsIndicators: false) {
                    Text("This is a very long text that will require horizontal scrolling to be fully visible.\nThis is a very long text that will require horizontal scrolling to be fully visible.")
                        .padding(5) // Add padding for better appearance
                        .foregroundColor(.white) // Set text color
                }
                .frame(maxWidth: .infinity) // Allow the text to take up maximum width
            )
            .padding() // Add padding around the rectangle
    }
}

#Preview {
    ImageSheetQ1Q2View(item: MenuItem.example)
}
