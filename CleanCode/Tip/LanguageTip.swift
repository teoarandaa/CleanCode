//
//  LanguageTip.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 29/10/24.
//

import Foundation
import TipKit

struct LanguageTip: Tip {
    var title: Text {
        Text("Languages")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("Here's where all the languages are available. Tap on one to know about it.")
    }
}
