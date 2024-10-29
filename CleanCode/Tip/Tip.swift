//
//  Tip.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 28/10/24.
//

import Foundation
import TipKit

// MARK: - More information Tip
struct MoreInformationTip: Tip {
    var title: Text {
        Text("Difficulty of every language")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("This section shows a legend with the difficulty level of each language, helping you understand how complex each one can be to work with.")
    }
    
    var image: Image? {
        Image(systemName: "gauge.with.needle")
    }
}

// MARK: - Code analyst Tip
struct CodeAnalystTip: Tip {
    var title: Text {
        Text("Scan code")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("This section provides a code scanner, allowing you to quickly identify issues and improvements, so you can enhance the quality and performance of your code.")
    }
    
    var image: Image? {
        Image(systemName: "magnifyingglass")
    }
}

// MARK: - More information Tip
