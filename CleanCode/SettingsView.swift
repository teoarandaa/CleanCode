//
//  SettingsView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var selection: String = "English"
    
    var body: some View {
        List {
            Section("Notifications") {
                Toggle (isOn: $isDarkMode){
                    Text("Push notifications")
                }
            }
            Section("Appearance") {
                Toggle(isOn: $isDarkMode) {
                    Text("Dark mode")
                }
            }
            Section("Others") {
                NavigationLink(destination: FaqView()) {
                    Text("FAQ (Frequently Asked Questions")
                }
                Button(action: {
                    sendEmail(to: "teoap2005@gmail.com")
                }) {
                    Text("CleanCode Support")
                }
            }
        }
        .navigationTitle("Settings")
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
    func sendEmail(to address: String) {
        if let url = URL(string: "mailto:\(address)") {
            UIApplication.shared.open(url)
        }
    }
}

#Preview {
    SettingsView()
}
