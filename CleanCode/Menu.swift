//
//  CleanCodeApp.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 17/9/24.
//

import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID { UUID() }
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Hashable, Identifiable {
    var id: UUID
    var name: String
    var miniDescription: String
    var restrictions: [String]
    var ask1: String
    var ask2: String
    var ask3: String
    var ask4: String
    var ask5: String
    var ask6: String
    var ask7: String
    var ask8: String
    var ask9: String
    var ask10: String
    var ask11: String
    var ask12: String
    var ask13: String
    var ask14: String
    var ask15: String
    var ask16: String
    var q1: String
    var q2: String
    var q3: String
    var q4: String
    var q5: String
    var q6: String
    var q7: String
    var q8: String
    var q9: String
    var q10: String
    var q11: String
    var q12: String
    var q13: String
    var q14: String
    var q15: String
    var q16: String
    var q17: String
    var q18: String
    var q19: String
    var q20: String
    var q21: String
    var q22: String
    var q23: String
    var q24: String
    var q25: String
    var q26: String
    var q27: String
    var q28: String
    var q29: String
    var q30: String
    var q31: String
    var q32: String
    var codeTest: String
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased() // Aqui es donde se modifica el "name" del JSON para que coincida con el de la imagen (SEGUIR LA MISMA LÓGICA)
    }

    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }

    #if DEBUG
    static let example = MenuItem(id: UUID(), name: "C++", miniDescription: "High-performance, object-oriented language.", restrictions: ["E", "I"], ask1: "Hello world", ask2: "Hello world", ask3: "Hello world", ask4: "Hello world", ask5: "Hello world", ask6: "Hello world", ask7: "Hello world", ask8: "Hello world", ask9: "Hello world", ask10: "Hello world", ask11: "Hello world", ask12: "Hello world", ask13: "Hello world", ask14: "Hello world", ask15: "Hello world", ask16: "Hello world", q1: "good world", q2: "good world", q3: "good world", q4: "good world", q5: "good world", q6: "good world", q7: "good world", q8: "good world", q9: "good world", q10: "good world", q11: "good world", q12: "good world", q13: "good world", q14: "good world", q15: "good world", q16: "good world", q17: "good world", q18: "good world", q19: "good world", q20: "good world", q21: "good world", q22: "good world", q23: "good world", q24: "good world", q25: "good world", q26: "good world", q27: "good world", q28: "good world", q29: "good world", q30: "good world", q31: "good world", q32: "good world", codeTest: "CodeTest")
    #endif
}
