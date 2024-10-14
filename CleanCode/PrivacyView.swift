//
//  PrivacyView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 12/10/24.
//

import SwiftUI

struct PrivacyView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        List {
            Section("General Policies") {
                NavigationLink(destination: TermsOfUseView()) {
                    Text("Terms of Use")
                }
            }
        }
        .navigationTitle("Privacy")
    }
}

#Preview {
    PrivacyView()
}
