//
//  ItemRow.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 24/9/24.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    let colors: [String: Color] = ["E": .green, "I": .yellow, "D": .red]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
            
            VStack (alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("\(item.miniDescription)")
            }
            
            Spacer()
            
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
    ItemRow(item: MenuItem.example)
}
