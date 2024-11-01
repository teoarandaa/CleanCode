//
//  SettingsView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    // MARK: - Sections for every setting
    var body: some View {
        NavigationView {
            List {
                // MARK: - Notifications
                Section("Notifications") {
                    Toggle (isOn: $isDarkMode){
                        Text("Push notifications")
                    }
                }
                // MARK: - Appearance
                Section("Appearance") {
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark mode")
                    }
                }
                // MARK: - Resources
                Section("Resources") {
                    NavigationLink(destination: FaqView()) {
                        Text("FAQ (Frequently Asked Questions")
                    }
                    NavigationLink(destination: PrivacyView()) {
                        Text("Privacy")
                    }
                    Button(action: {
                        sendEmail(to: "help.cleancode@gmail.com")
                    }) {
                        Text("CleanCode Support")
                    }
                }
                // MARK: - Social media
                Section("Social media") {
                    Button("CleanCode website") {
                        UIApplication.shared.open(URL(string: "https://www.example.com")!)
                    }
                    Button("CleanCode Instagram") {
                        UIApplication.shared.open(URL(string: "https://www.instagram.com/cleancode.app/")!)
                    }
                }
                // MARK: - Tip jar
                Section("Tip jar") {
                    Text("Nothing here... for now")
                        .foregroundStyle(.gray)
                }
                // MARK: - Agreements
                Section("Agreements") {
                    Text("Thanks to all my friends and my girlfriend for being my support!")
                }
                // MARK: - Version (update from CleanCode/General/Version)
                Section("Version") {
                    Text(appVersion!)
                }
            }
            .navigationTitle("Settings")
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
    // MARK: - Function to send email
    func sendEmail(to address: String) {
        if let url = URL(string: "mailto:\(address)") {
            UIApplication.shared.open(url)
        }
    }
    // MARK: - Shows the current version
    var appVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
}

#Preview {
    SettingsView()
}
