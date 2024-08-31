//
//  BarGraphWithAnimation.swift
//  PersonalPortfolio
//
//  Created by Sushanth on 25/08/24.
//

import SwiftUI

struct BarGraphWithAnimation: View {
    var body: some View {
        ZStack() {
          //  VStack( ){
        
                BarGraph(heigh: 220, color: Color.gray)
                
            
               
         
            VStack {
               Spacer()
                BarGraph(heigh: 140, color: Color.blue)
                    .frame(height: 140)
            }
                   
                    
          
        
                // .rotationEffect(.degrees(180))
           // }
           // VStack() {
                
                 //   .rotationEffect(.degrees(180))
           // }
        }
        .frame(height: 220)
//        //.rotation3DEffect(
//                   .degrees(45), // The angle of rotation
//                   axis: (x: 1.0, y: 0.0, z: 0.0), // Rotate around the X-axis
//                   anchor: .center, // Anchor point for the rotation
//                   anchorZ: 0.0, // Z-position of the anchor point
//                   perspective: 1.0 // The perspective effect, default is 1.0
//               )
        
        
           
            
            
        
        //.rotationEffect(.degrees(90))
    }
}

#Preview {
    BarGraphWithAnimation()
}
