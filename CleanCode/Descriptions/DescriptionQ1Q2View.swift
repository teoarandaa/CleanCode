//
//  DescriptionQ1Q2View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ1Q2View: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var showingBottomSheet: Bool = false
    let item: MenuItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheet.toggle()
                }
            }
            
            Section {
                Text(item.q1)
            }
            Section {
                Text(item.q2)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("\(item.ask1)")
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.trailing)
            }
        }
        .sheet(isPresented: $showingBottomSheet) {
            ImageSheetQ1Q2View(item: item)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ1Q2View(item: MenuItem.example)
}
