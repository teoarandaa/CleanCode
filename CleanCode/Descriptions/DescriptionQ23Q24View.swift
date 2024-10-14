//
//  DescriptionQ23Q24View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ23Q24View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: MenuItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q23)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
                Text(item.q24)
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
            ImageSheetQ23View(item: item)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ24View(item: item)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ23Q24View(item: MenuItem.example)
}
