//
//  BarGraph.swift
//  PersonalPortfolio
//
//  Created by Sushanth on 25/08/24.
//

import SwiftUI

struct BarGraph: View {
    var heigh: Int
    var color: Color
    var body: some View {
        VStack {
            Spacer()
            ZStack() {
                
                
                Path { path in
                    path.move(to: CGPointMake(50, CGFloat(heigh - 10)))
                    path.addLine(to: CGPoint(x: 30, y: heigh - 20))
                    path.addLine(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 50, y: 35))
                    
                    path.closeSubpath()
                    
                }
                .fill(color.opacity(0.6))
                
                Path { path in
                    path.move(to: CGPointMake(50, CGFloat(heigh - 10)))
                    path.addLine(to: CGPoint(x: 70, y: heigh - 20))
                    path.addLine(to: CGPoint(x: 70, y: 30))
                    path.addLine(to: CGPoint(x: 50, y: 35))
                    
                    path.closeSubpath()
                    
                }
                .fill(color.opacity(0.8))
                
                Path {
                    path in
                    path.move(to: CGPointMake(50, 35))
                    path.addLine(to: CGPoint(x: 70, y: 30))
                    path.addLine(to: CGPointMake(50, 25))
                    path.addLine(to: CGPointMake(30, 30))
                }
                .fill(color.opacity(0.4))
                
                
                
                
//                Path { path in
//                    path.move(to: CGPoint(x: 80, y: 20))
//                    path.addLine(to: CGPoint(x: 80, y: heigh))
//                    path.addLine(to: CGPoint(x: 50, y: heigh + 20))
//                    path.addLine(to: CGPoint(x: 50, y: 40))
//                    path.closeSubpath()
//                }
//                .fill(color.opacity(0.8))
//                
//                Path {path in
//                    path.move(to: CGPoint(x: 20, y: 20))
//                    path.addLine(to: CGPoint(x: 20, y: heigh))
//                    path.addLine(to: CGPoint(x: 50, y: heigh + 20))
//                    path.addLine(to: CGPoint(x: 50, y:  40))
//                    path.closeSubpath()
//                }
//                .fill(color.opacity(0.6))
            
        
            }
      
        }
    }
}

#Preview {
    BarGraph(heigh: 100, color: Color.blue)
}
