//
//  OnBoardingView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 21/10/24.
//

import SwiftUI

struct OnBoardingStep {
    let image: String
    let title: String
    let description: String
}

private let onBoardingSteps = [
    OnBoardingStep(image: "a", title: "#", description: "#"),
    OnBoardingStep(image: "b", title: "a", description: "#"),
    OnBoardingStep(image: "c", title: "b", description: "#")
]

struct OnBoardingView: View {
    @State private var currentStep: Int = 0
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    self.currentStep = onBoardingSteps.count - 1
                }) {
                    Text("Skip")
                        .padding(16)
                        .foregroundStyle(.secondary)
                }

            }
        }
        
        TabView(selection: $currentStep) {
            ForEach(0..<onBoardingSteps.count) { it in
                VStack {
                    Image(onBoardingSteps[it].image)
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    Text(onBoardingSteps[it].title)
                        .font(.title)
                        .bold()
                    
                    Text(onBoardingSteps[it].description)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 32)
                }
                .tag(it)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        HStack {
            ForEach(0..<onBoardingSteps.count) { it in
                if it == currentStep {
                    Rectangle()
                        .frame(width: 20, height: 10)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(.purple)
                } else {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(.gray)
                }
            }
        }
        .padding(.bottom, 24)
        
        Button(action: {
            if self.currentStep < onBoardingSteps.count - 1 {
                self.currentStep += 1
            } else {
                ContentView()
            }
        }) {
            Text(currentStep < onBoardingSteps.count ? "Next" : "Get Started")
                .padding(16)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal, 16)
                .foregroundStyle(.white)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    OnBoardingView()
}
