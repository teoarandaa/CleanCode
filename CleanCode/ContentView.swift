//
//  CleanCodeApp.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 13/9/24.
//

import SwiftUI

struct ContentView: View {
    let language = Bundle.main.decode([MenuSection].self, from: "menu.json")
    @State private var showingBottomSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Button("More information") {
                    showingBottomSheet.toggle()
                }
                ForEach(language) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                ChapterView(item: item)
            }
            .navigationTitle("CleanCode")
        }
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView(item: MenuItem.example)
                .presentationDetents(.init([.height(560)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    ContentView()
}

// .searchable(text: $searchText)
