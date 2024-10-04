//
//  SettingsView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        List {
            Section("Language") {
                Text("Nothing here... for now")
                    .foregroundStyle(.gray)
            }
            Section("Appearance") {
                Toggle(isOn: $isDarkMode) {
                    Text("Dark Mode")
                }
            }
        }
        .navigationTitle("Settings")
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    SettingsView()
}
