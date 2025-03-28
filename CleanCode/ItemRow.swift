//
//  ItemRow.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 24/9/24.
//

import SwiftUI

struct ItemRow: View {
    let item: DataItem
    let colors: [String: Color] = ["E": .green, "I": .yellow, "D": .red]
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        // MARK: - Display text and mini description of every language
        HStack {
            VStack (alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("\(item.miniDescription)")
            }
            
            Spacer()
            
            // MARK: - Display the restrictions and the colors previosuly filtered in colors
            ForEach(item.restrictions, id: \.self) { restriction in
                ZStack {
                    RoundedRectangle(cornerRadius: 100)
                        .frame(width: 20, height: 20)
                        .foregroundStyle(colors[restriction, default: .black])
                    
                    Text(restriction)
                        .font(.caption)
                        .fontWeight(.black)
                        .padding(5)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ItemRow(item: DataItem.example)
}
