//
//  DescriptionQ13Q14View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ13Q14View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: MenuItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q13)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
                Text(item.q14)
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
        .sheet(isPresented: $showingBottomSheetA) {
            ImageSheetQ13View(item: item)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ14View(item: item)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ13Q14View(item: MenuItem.example)
}
