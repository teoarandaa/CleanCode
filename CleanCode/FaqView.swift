//
//  FaqView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 7/10/24.
//

import SwiftUI

struct FAQItem: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
}

struct FAQView: View {
    @State private var expandedItem: UUID? // Variable para rastrear qué elemento está expandido
    let faqItems: [FAQItem] = [
        FAQItem(question: "How can I contact support?", answer: "You can contact support by sending an email to support@example.com."),
        FAQItem(question: "What payment methods do you accept?", answer: "We accept major credit cards and Apple Pay for online purchases and the tip jar."),
        FAQItem(question: "How do I enable push notifications?", answer: "You can enable push notifications by going to 'Settings' > 'Notifications' and toggling them on for the app.")
    ]
    
    var body: some View {
        List(faqItems) { item in
            DisclosureGroup(
                isExpanded: Binding(
                    get: { expandedItem == item.id },
                    set: { expandedItem = $0 ? item.id : nil }
                )
            ) {
                Text(item.answer)
            } label: {
                Text(item.question)
                    .font(.headline)
            }
        }
        .navigationTitle("FAQ")
    }
}

struct FaqView: View {
    var body: some View {
        FAQView()
    }
}

#Preview {
    FaqView()
}
