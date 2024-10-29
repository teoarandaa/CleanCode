//
//  CodeAnalystTip.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 29/10/24.
//

import Foundation
import TipKit

struct CodeAnalystTip: Tip {
    var title: Text {
        Text("Scan code")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("This scanner allows you to quickly identify issues and improvements for a better quality and performance of your code.")
    }
    
    var image: Image? {
        Image(systemName: "magnifyingglass")
    }
}
