//
//  ScannerView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 25/10/24.
//

import SwiftUI

struct ScannerView: View {
    @StateObject var scanProvider = ScanProvider()
    
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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .large])
            }
    }
}

#Preview {
    ScannerView()
}
