//
//  DescriptionQ27Q28View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ27Q28View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: MenuItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q27)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
                Text(item.q28)
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
            ImageSheetQ27View(item: item)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ28View(item: item)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ27Q28View(item: MenuItem.example)
}
