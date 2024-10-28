//
//  BottomSheetView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 24/9/24.
//

import SwiftUI

struct BottomSheetView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    // MARK: - Structure for displaying the items. All three separated by HStack{}
    var body: some View {
        VStack(alignment: .leading) {
            
            // MARK: - Easy
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.regularMaterial)
                    .frame(width: .infinity, height: 160)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.green)
                        Text("E")
                            .font(.title.bold())
                            .foregroundStyle(.white)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Easy")
                            .font(.headline)
                        Text("Accessible for beginners, with clear syntax and abundant support resources. Ideal for quickly learning the basics.")
                    }
                    .padding()
                }
            }
            
            // MARK: - Intermediate
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.regularMaterial)
                    .frame(width: .infinity, height: 180)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.yellow)
                        Text("I")
                            .font(.title.bold())
                            .foregroundStyle(.white)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Intermediate")
                            .font(.headline)
                        Text("Requires a deeper knowledge and understanding of concepts such as object-oriented programming and data structures. Presents significant challenges.")
                    }
                    .padding()
                }
            }
            
            // MARK: - Hard
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.regularMaterial)
                    .frame(width: .infinity, height: 200)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.red)
                        Text("D")
                            .font(.title.bold())
                            .foregroundStyle(.white)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Hard")
                            .font(.headline)
                        Text("Complex languages that demand an advanced understanding. Involve memory management and performance optimization, being challenging even for experienced programmers.")
                    }
                    .padding()
                }
            }
        }
        .padding()
    }
}

#Preview {
    BottomSheetView()
}
