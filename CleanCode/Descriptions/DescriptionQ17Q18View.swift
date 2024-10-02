//
//  DescriptionQ17Q18View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ17Q18View: View {
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
                Text(item.q17)
            }
            Section {
                Text(item.q18)
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
    DescriptionQ17Q18View(item: MenuItem.example)
}
