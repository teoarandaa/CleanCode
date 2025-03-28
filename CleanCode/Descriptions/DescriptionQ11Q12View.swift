//
//  DescriptionQ11Q12View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ11Q12View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: DataItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q11)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
                Text(item.q12)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("\(item.ask6)")
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.trailing)
            }
        }
        .sheet(isPresented: $showingBottomSheetA) {
            ImageSheetQ11View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ12View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ11Q12View(item: DataItem.example)
}
