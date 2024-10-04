//
//  DescriptionQ19Q20View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ19Q20View: View {
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
                Text(item.q19)
            }
            Section {
                Text(item.q20)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("\(item.ask10)")
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
    DescriptionQ19Q20View(item: MenuItem.example)
}
