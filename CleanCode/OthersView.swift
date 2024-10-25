//
//  OthersView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 4/10/24.
//

import SwiftUI

struct OthersView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    //MARK: Sections for every field
    var body: some View {
        List {
            //MARK: Social media
            Section("Social media") {
                Button("CleanCode website") {
                    UIApplication.shared.open(URL(string: "https://www.example.com")!)
                }
                Button("CleanCode Instagram") {
                    UIApplication.shared.open(URL(string: "https://www.instagram.com/cleancode.app/")!)
                }
                Button(action: {
                    shareContent()
                }) {
                    Text("Share CleanCode")
                }
            }
            //MARK: Tip jar
            Section("Tip jar") {
                Text("Nothing here... for now")
                    .foregroundStyle(.gray)
            }
            //MARK: Agreements
            Section("Agreements") {
                Text("Thanks to all my friends and my girlfriend for being my support!")
            }
            //MARK: Version (update from CleanCode/General/Version)
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
