//
//  DescriptionQ7Q8View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ7Q8View: View {
    @State private var showingBottomSheetA: Bool = false
    @State private var showingBottomSheetB: Bool = false
    let item: DataItem
    
    var body: some View {
        List {
            Section {
                Button("See code") {
                    showingBottomSheetA.toggle()
                }
                Text(item.q7)
            }
            
            Section {
                Button("See code") {
                    showingBottomSheetB.toggle()
                }
                Text(item.q8)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("\(item.ask4)")
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.trailing)
            }
        }
        .sheet(isPresented: $showingBottomSheetA) {
            ImageSheetQ7View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
        .sheet(isPresented: $showingBottomSheetB) {
            ImageSheetQ8View(item: item)
                .presentationDetents(.init([.height(760)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    DescriptionQ7Q8View(item: DataItem.example)
}
