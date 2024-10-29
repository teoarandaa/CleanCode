//
//  CleanCodeApp.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 13/9/24.
//

import SwiftUI
import TipKit

@main
struct CleanCodeApp: App {
    // MARK: - Controls the mode (dark/light) on the app
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                // MARK: - Tip configuration
                .task {
                    try? Tips.resetDatastore()
                    try? Tips.configure([
                        //.displayFrequency(.immediate)
                        .datastoreLocation(.applicationDefault)])
                }
                // MARK: - Keeps the state of the variable isDarkMode when the color scheme is changed
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
