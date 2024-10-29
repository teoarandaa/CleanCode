//
//  MoreInformationTip.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 28/10/24.
//

import Foundation
import TipKit

// MARK: - More information Tip
struct MoreInformationTip: Tip {
    var title: Text {
        Text("Difficulty levels")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("This section shows a legend with the difficulty level of each language, helping you understand how complex each one can be to work with.")
    }
    
    var image: Image? {
        Image(systemName: "gauge.with.needle")
    }
}
