//
//  OthersView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 4/10/24.
//

import SwiftUI
import UIKit

struct OthersView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        List {
            Section("About us") {
                Text("CleanCode aims to be the solution to poorly written programs. As a CleanCode developer, I can’t stand spending hours trying to understand someone else’s code, and that’s partly where the idea for this app comes from.\nNo more confusing code!")
            }
            Section("Website") {
                Button("CleanCode web") {
                    UIApplication.shared.open(URL(string: "https://www.example.com")!)
                }
            }
            Section("Share") {
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
        let items = ["¡CleanCode!", "https://www.apple.com/es/app-store/"] // Contenido que deseas compartir
            
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
            
        // Obtener el controlador de vista raíz usando UIWindowScene
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
