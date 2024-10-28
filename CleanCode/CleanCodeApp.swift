//
//  CleanCodeApp.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 13/9/24.
//

import SwiftUI

@main
struct CleanCodeApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
