//
//  ChapterView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 26/9/24.
//

import SwiftUI

struct ChapterView: View {
    let item: DataItem
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    // MARK: - List of every section of 1 language. It addapts the information displayed to the language the user is using -> Descriptions/DescriptionQXQYView()
    var body: some View {
        List {
            NavigationLink(destination: DescriptionQ1Q2View(item: item)) {
                Text("\(item.ask1)")
            }
            NavigationLink(destination: DescriptionQ3Q4View(item: item)) {
                Text("\(item.ask2)")
            }
            NavigationLink(destination: DescriptionQ5Q6View(item: item)) {
                Text("\(item.ask3)")
            }
            NavigationLink(destination: DescriptionQ7Q8View(item: item)) {
                Text("\(item.ask4)")
            }
            NavigationLink(destination: DescriptionQ9Q10View(item: item)) {
                Text("\(item.ask5)")
            }
            NavigationLink(destination: DescriptionQ11Q12View(item: item)) {
                Text("\(item.ask6)")
            }
            NavigationLink(destination: DescriptionQ13Q14View(item: item)) {
                Text("\(item.ask7)")
            }
            NavigationLink(destination: DescriptionQ15Q16View(item: item)) {
                Text("\(item.ask8)")
            }
            NavigationLink(destination: DescriptionQ17Q18View(item: item)) {
                Text("\(item.ask9)")
            }
            NavigationLink(destination: DescriptionQ19Q20View(item: item)) {
                Text("\(item.ask10)")
            }
            NavigationLink(destination: DescriptionQ21Q22View(item: item)) {
                Text("\(item.ask11)")
            }
            NavigationLink(destination: DescriptionQ23Q24View(item: item)) {
                Text("\(item.ask12)")
            }
            NavigationLink(destination: DescriptionQ25Q26View(item: item)) {
                Text("\(item.ask13)")
            }
            NavigationLink(destination: DescriptionQ27Q28View(item: item)) {
                Text("\(item.ask14)")
            }
            NavigationLink(destination: DescriptionQ29Q30View(item: item)) {
                Text("\(item.ask15)")
            }
            NavigationLink(destination: DescriptionQ31Q32View(item: item)) {
                Text("\(item.ask16)")
            }
        }
        .navigationTitle("Items for \(item.name)")
    }
}

#Preview {
    ChapterView(item: DataItem.example)
}
