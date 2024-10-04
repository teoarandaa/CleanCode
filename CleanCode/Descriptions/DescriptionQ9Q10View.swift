//
//  DescriptionQ9Q10View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ9Q10View: View {
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
                Text(item.q9)
            }
            Section {
                Text(item.q10)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("\(item.ask5)")
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.trailing)
            }
        }
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView(item: MenuItem.example)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ9Q10View(item: MenuItem.example)
}
