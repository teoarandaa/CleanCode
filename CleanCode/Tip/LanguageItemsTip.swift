//
//  LanguageItemsTip.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 29/10/24.
//

import Foundation
import TipKit

struct LanguageItemsTip: Tip {
    var title: Text {
        Text("Items")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("Each item have information and code examples related to the topic in their titles.")
    }
    
    var image: Image? {
        Image(systemName: "text.rectangle.page")
    }
}
