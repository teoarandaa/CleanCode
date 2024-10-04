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
    @AppStorage("isDarkMode") private var isDarkMode = false
    
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
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(destination: OthersView()) {
                        Image(systemName: "questionmark.circle")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear.circle")
                    }
                }
            }
            .navigationTitle("CleanCode")
        }
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView(item: MenuItem.example)
                .presentationDetents(.init([.height(700)]))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    ContentView()
}

// .searchable(text: $searchText)
