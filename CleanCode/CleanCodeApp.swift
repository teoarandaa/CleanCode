//
//  CleanCodeApp.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 13/9/24.
//

import SwiftUI

@main
struct CleanCodeApp: App {
    // MARK: - Controls the mode (dark/light) on the app
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                // MARK: - Keeps the state of the variable isDarkMode when the color scheme is changed
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
