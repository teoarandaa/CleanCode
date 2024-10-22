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
    @AppStorage("iswelcomeSheetShowing") var isWelcomeSheetShowing: Bool = true
    
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
                        Image(systemName: "gear")
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
        .sheet(isPresented: $isWelcomeSheetShowing) {
            WelcomeView(isWelcomeSheetShowing: $isWelcomeSheetShowing)
        }
    }
}

#Preview {
    WelcomeView(isWelcomeSheetShowing: .constant(false))
}

struct PageInfo: Identifiable {
    let id = UUID()
    let label: String
    let text: String
    let image: ImageResource
}

let pages = [
    PageInfo(label: "welcome to cleancode", text: "discover the finest pastries", image: .imageOne),
    PageInfo(label: "omg to cleancode", text: "hell yeah", image: .imageOne),
    PageInfo(label: "last to cleancode", text: "bye bye", image: .imageOne)
]

struct WelcomeView: View {
    @Binding var isWelcomeSheetShowing: Bool
    @State private var currentPage = 0 // Para rastrear la página actual
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<pages.count, id: \.self) { index in
                    VStack {
                        Text(pages[index].label)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                        Text(pages[index].text)
                            .fontWeight(.medium)
                            .padding()
                        
                        Image(pages[index].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    .tag(index) // Etiqueta para la selección de TabView
                }
            }
            .tabViewStyle(.page)
            
            // Botón con animación de aparición/desaparición basado en la página actual
            Button {
                isWelcomeSheetShowing.toggle()
            } label: {
                Text("Get started")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            .opacity(currentPage == pages.count - 1 ? 1 : 0) // El botón aparece solo en la última página
            .animation(.easeInOut(duration: 0.5), value: currentPage) // Animación al cambiar de página
        }
        .interactiveDismissDisabled()
        .onAppear {
            UIPageControl.appearance().currentPageIndicatorTintColor = .label
            UIPageControl.appearance().pageIndicatorTintColor = .systemGray
        }
    }
}
