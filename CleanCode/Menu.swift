//
//  CleanCodeApp.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 17/9/24.
//

import SwiftUI

//MARK: Variables for menu.json groups
struct MenuSection: Codable, Identifiable {
    var id: UUID { UUID() }
    var name: String
    var items: [MenuItem]
}

//MARK: In menu.json groups, variables for items in every group (ALL MUST BE THE SAME)
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
    var code1: String
    var code2: String
    var code3: String
    var code4: String
    var code5: String
    var code6: String
    var code7: String
    var code8: String
    var code9: String
    var code10: String
    var code11: String
    var code12: String
    var code13: String
    var code14: String
    var code15: String
    var code16: String
    var code17: String
    var code18: String
    var code19: String
    var code20: String
    var code21: String
    var code22: String
    var code23: String
    var code24: String
    var code25: String
    var code26: String
    var code27: String
    var code28: String
    var code29: String
    var code30: String
    var code31: String
    var code32: String

    //MARK: Debugger: It is shown in preview.
    #if DEBUG
    static let example = MenuItem(id: UUID(), name: "C++", miniDescription: "High-performance, object-oriented language.", restrictions: ["E", "I"], ask1: "Hello world", ask2: "Hello world", ask3: "Hello world", ask4: "Hello world", ask5: "Hello world", ask6: "Hello world", ask7: "Hello world", ask8: "Hello world", ask9: "Hello world", ask10: "Hello world", ask11: "Hello world", ask12: "Hello world", ask13: "Hello world", ask14: "Hello world", ask15: "Hello world", ask16: "Hello world", q1: "good world", q2: "good world", q3: "good world", q4: "good world", q5: "good world", q6: "good world", q7: "good world", q8: "good world", q9: "good world", q10: "good world", q11: "good world", q12: "good world", q13: "good world", q14: "good world", q15: "good world", q16: "good world", q17: "good world", q18: "good world", q19: "good world", q20: "good world", q21: "good world", q22: "good world", q23: "good world", q24: "good world", q25: "good world", q26: "good world", q27: "good world", q28: "good world", q29: "good world", q30: "good world", q31: "good world", q32: "good world", code1: "code1", code2: "code2", code3: "code3", code4: "code4", code5: "code5", code6: "code6", code7: "code7", code8: "code8", code9: "code9", code10: "code10", code11: "code11", code12: "code12", code13: "code13", code14: "code14", code15: "code15", code16: "code16", code17: "code17", code18: "code18", code19: "code19", code20: "code20", code21: "code21", code22: "code22", code23: "code23", code24: "code24", code25: "code25", code26: "code26", code27: "code27", code28: "code28", code29: "code29", code30: "code30", code31: "code31", code32: "code32")
    #endif
}
