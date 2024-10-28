//
//  CleanCodeApp.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 13/9/24.
//

import SwiftUI

struct ContentView: View {
    let language = Bundle.main.decode([DataSection].self, from: "data.json")
    @State private var showingBottomSheet: Bool = false
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isWelcomeSheetShowing") var isWelcomeSheetShowing: Bool = true
    
    var body: some View {
        NavigationStack {
            List {
                // MARK: - More information -> BottomSheetView()
                Button("More information") {
                    showingBottomSheet.toggle()
                }
                
                // MARK: - Scanner -> ScannerView()
                NavigationLink(destination: ScannerView()) {
                    Text("Code analyst")
                        .foregroundStyle(.link)
                    
                }
                
                // MARK: - Print all the languages -> ChapterView()
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
            
            // MARK: - Destination for every NavigationLink in Foreach -> ChapterView()
            .navigationDestination(for: DataItem.self) { item in
                ChapterView(item: item)
            }
            
            .toolbar {
                
                // MARK: - NavigationLink for OthersView -> OthersView()
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(destination: OthersView()) {
                        Image(systemName: "questionmark.circle")
                    }
                }
                
                // MARK: - NavigationLink for SettingsView -> SettingsView()
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear")
                    }
                }
            }
            .navigationTitle("CleanCode")
        }
        
        // MARK: - Sheet for explainings about the difficulties in every language -> BottomSheetView()
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView()
                .presentationDetents(.init([.height(700)]))
                .presentationDragIndicator(.visible)
        }
        
        // MARK: - Onboarding view -> ContentView()
        .sheet(isPresented: $isWelcomeSheetShowing) {
            WelcomeView(isWelcomeSheetShowing: $isWelcomeSheetShowing)
        }
    }
}

#Preview {
    ContentView()
}

// MARK: - Code for WelcomeView -> ContentView()
// MARK: - Constants for distributing page information
struct PageInfo: Identifiable {
    let id = UUID()
    let label: String
    let text: String
    let image: ImageResource
}

// MARK: - Array of pages. They contain the information for every page. Create a new one to create a new page that will automatically add
let pages = [
    PageInfo(label: "Welcome to CleanCode", text: "We’re excited to have you! CleanCode helps you optimize your coding experience, making your projects cleaner and easier to maintain.", image: .imageOne),
    PageInfo(label: "Benefits", text: "CleanCode provides offline programming knowledge, allowing you to explore languages and get instant coding tips anytime, anywhere.", image: .imageTwo),
    PageInfo(label: "Are you ready?", text: "Let’s transform the way you code.\nYour journey starts now—let’s get started!", image: .imageThree)
]

// MARK: - Structure of the view for every page (UI)
struct WelcomeView: View {
    @Binding var isWelcomeSheetShowing: Bool
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<pages.count, id: \.self) { index in
                    VStack {
                        Text(pages[index].label)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .frame(height: 100)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text(pages[index].text)
                            .fontWeight(.medium)
                            .padding()
                            .frame(height: 100)
                            .multilineTextAlignment(.leading)
                        
                        Image(pages[index].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page)
            
            // MARK: - Last button. It appears when the user is in the last page
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
            .tint(Color.mint)
            .padding()
            .opacity(currentPage == pages.count - 1 ? 1 : 0)
            .animation(.easeInOut(duration: 0.5), value: currentPage)
        }
        .interactiveDismissDisabled()
        .onAppear {
            // MARK: - Color for the page indicator
            UIPageControl.appearance().currentPageIndicatorTintColor = .label
            UIPageControl.appearance().pageIndicatorTintColor = .systemGray
        }
    }
}
