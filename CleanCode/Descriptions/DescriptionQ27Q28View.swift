//
//  DescriptionQ27Q28View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct DescriptionQ27Q28View: View {
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
                Text(item.q27)
            }
            Section {
                Text(item.q28)
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
    DescriptionQ27Q28View(item: MenuItem.example)
}
