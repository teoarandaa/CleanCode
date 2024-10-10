//
//  ImageSheetQ1Q2.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 10/10/24.
//

import SwiftUI

struct ImageSheetQ1Q2: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.blue)
            .frame(width: 300, height: 60)
            .overlay(
                ScrollView(.horizontal, showsIndicators: true) {
                    Text("Este es un texto largo que necesita desplazamiento horizontal para poder verlo completamente.")
                        .padding()
                        .foregroundColor(.white)
                }
                .frame(width: 280, height: 50) // Controla el tamaño del área desplazable
                .padding(.horizontal, 10) // Ajusta el padding para el texto
            )
    }
}

#Preview {
    ImageSheetQ1Q2()
}
