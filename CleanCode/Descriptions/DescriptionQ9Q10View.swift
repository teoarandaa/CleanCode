//
//  DescriptionQ9Q10View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ9Q10View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: DataItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q9)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
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
        .sheet(isPresented: $showingBottomSheetA) {
            ImageSheetQ9View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ10View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ9Q10View(item: DataItem.example)
}
