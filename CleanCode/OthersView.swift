//
//  OthersView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 4/10/24.
//

import SwiftUI

struct OthersView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        List {
            Section("Social media") {
                Button("CleanCode website") {
                    UIApplication.shared.open(URL(string: "https://www.example.com")!)
                }
                Button("CleanCode Instagram") {
                    UIApplication.shared.open(URL(string: "https://www.example.com")!)
                }
                Button(action: {
                    shareContent()
                }) {
                    Text("Share CleanCode")
                }
            }
            Section("Tip jar") {
                Text("Nothing here... for now")
                    .foregroundStyle(.gray)
            }
            Section("Agreements") {
                Text("Thanks to all my friends and my girlfriend for being my support!")
            }
            Section("Version") {
                Text(appVersion!)
            }
        }
        .navigationTitle("About CleanCode")
    }
    
    var appVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
    
    func shareContent() {
        let items = ["¡CleanCode!", "https://www.apple.com/es/app-store/"]
            
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
            
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let topController = windowScene.windows.first?.rootViewController {
                topController.present(activityVC, animated: true, completion: nil)
            }
        }
    }
}

#Preview {
    OthersView()
}
