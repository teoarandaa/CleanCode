//
//  SettingsView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 2/10/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section("Version") {
                Text(appVersion!)
            }
        }
    }
    
    var appVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
}

#Preview {
    SettingsView()
}
