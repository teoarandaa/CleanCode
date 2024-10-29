//
//  OthersTip.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 29/10/24.
//

import Foundation
import TipKit

struct OthersTip: Tip {
    var title: Text {
        Text("Others")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("This section contains all features that are not related to the main sections.")
    }
    
    var image: Image? {
        Image(systemName: "questionmark.circle")
    }
}
