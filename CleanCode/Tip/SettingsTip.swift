//
//  SettingsTip.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 29/10/24.
//

import Foundation
import TipKit

struct SettingsTip: Tip {
    var title: Text {
        Text("Settings")
            .foregroundStyle(.accent)
    }
    
    var message: Text? {
        Text("This section has all the settings to customize your experience.")
    }
    
    var image: Image? {
        Image(systemName: "gear")
    }
}

