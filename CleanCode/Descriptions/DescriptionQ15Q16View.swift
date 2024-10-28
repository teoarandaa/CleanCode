//
//  DescriptionQ15Q16View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ15Q16View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: DataItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q15)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
                Text(item.q16)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("\(item.ask8)")
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.trailing)
            }
        }
        .sheet(isPresented: $showingBottomSheetA) {
            ImageSheetQ15View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ16View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ15Q16View(item: DataItem.example)
}
