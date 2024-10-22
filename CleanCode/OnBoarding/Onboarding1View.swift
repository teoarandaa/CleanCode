//
//  Onboarding1View.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 22/10/24.
//

import SwiftUI

struct Onboarding1View: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Onboarding1View()
}

struct GeoView: View {
    @Binding var isExpanded: Bool
    @Binding var startTyping: Bool
    @Binding var showText: Bool
    
    var color: String
    var text: String = "NEXT"
    var showNextView: Binding<Bool>?
    var shouldToggleExpand: Bool = true
    var body: some View {
        GeometryReader { geometry in
            
        }
    }
}
