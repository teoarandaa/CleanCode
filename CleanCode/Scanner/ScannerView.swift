//
//  ScannerView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 27/10/24.
//

import SwiftUI

struct ScannerView: View {
    @StateObject var scanProvider = ScanProvider()
    @AppStorage("isScannerWelcomeSheetShowing") var isScannerWelcomeSheetShowing: Bool = true
    
    // MARK: - Shows the text captured through the camera
    var body: some View {
        ScanView(scanProvider: scanProvider)
            .sheet(isPresented: $scanProvider.showSheet) {
                VStack {
                    Text(scanProvider.text)
                        .font(.system(.body, design: .rounded))
                        .padding(.top, 20)
                        .padding(.horizontal, 20)
                    Spacer()
                }
            }
            .presentationDragIndicator(.visible)
            .presentationDetents([.medium, .large])
            .sheet(isPresented: $isScannerWelcomeSheetShowing) {
                ScannerWelcomeView(isScannerWelcomeSheetShowing: $isScannerWelcomeSheetShowing)
            }
    }
}

#Preview {
    ScannerView()
}

// MARK: - Code for ScannerWelcomeView -> ScannerView()
// MARK: - Constants for distributing page information
struct ScannerPageInfo: Identifiable {
    let id = UUID()
    let label: String
    let text: String
    let image: ImageResource
}

// MARK: - Array of pages. They contain the information for every page. Create a new one to create a new page that will automatically add
let scannerPages = [
    ScannerPageInfo(label: "Code analyst", text: "Scan your code to detect issues, improve performance, and ensure best practices—fast and easy.", image: .imageScannerOne),
]

// MARK: - Structure of the view for every page (UI)
struct ScannerWelcomeView: View {
    @Binding var isScannerWelcomeSheetShowing: Bool
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<scannerPages.count, id: \.self) { index in
                    VStack {
                        Text(scannerPages[index].label)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .frame(height: 100)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text(scannerPages[index].text)
                            .fontWeight(.medium)
                            .padding()
                            .frame(height: 100)
                            .multilineTextAlignment(.leading)
                        
                        Image(scannerPages[index].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page)
            
            // MARK: - Last button. It appears when the user is in the last page
            Button {
                isScannerWelcomeSheetShowing.toggle()
            } label: {
                Text("Start scanning")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.indigo)
            .padding()
            .opacity(currentPage == scannerPages.count - 1 ? 1 : 0)
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
