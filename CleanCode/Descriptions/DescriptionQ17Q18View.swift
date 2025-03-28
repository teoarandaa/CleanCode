//
//  DescriptionQ17Q18View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ17Q18View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: DataItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q17)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
                Text(item.q18)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("\(item.ask9)")
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.trailing)
            }
        }
        .sheet(isPresented: $showingBottomSheetA) {
            ImageSheetQ17View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ18View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ17Q18View(item: DataItem.example)
}
