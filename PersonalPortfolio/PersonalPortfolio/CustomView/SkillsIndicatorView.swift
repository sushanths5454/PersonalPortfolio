//
//  SkillsIndicatorView.swift
//  PersonalPortfolio
//
//  Created by Sushanth on 24/08/24.
//

import SwiftUI

struct SkillsIndicatorView: View {
    var skill: String
    var percentage: Double
    var body: some View {
        HStack() {
            Text(skill)
            
                .frame(maxWidth: UIScreen.main.bounds.width * 0.4)
            ZStack(alignment: .leading) {
                GeometryReader { metric in
                    let color = randomColor()
                    Rectangle()
                        
                        
                        .frame(width: metric.size.width)
                        //.fill(style: Color.red)
                        .foregroundColor(color.opacity(0.5))
                    Rectangle()
                
                        .frame(width: metric.size.width * percentage)
                    .foregroundColor(color)
                    
                    
                }

            }
            .frame(width: UIScreen.main.bounds.width * 0.6, height: 9)
            
            
        }.frame(width: UIScreen.main.bounds.width - 20, height: 10)
        .padding()
    }
    func randomColor() -> Color {
        // Generate random values for red, green, and blue components
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        
        return Color(red: red, green: green, blue: blue)
    }
}

#Preview {
    SkillsIndicatorView(skill: "Pods", percentage: 0.9)
        
        
}
