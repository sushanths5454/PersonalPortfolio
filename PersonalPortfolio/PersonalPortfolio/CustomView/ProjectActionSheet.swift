//
//  ProjectActionSheet.swift
//  PersonalPortfolio
//
//  Created by Sushanth on 24/08/24.
//

import SwiftUI

struct ProjectActionSheet: View {
    let skills: [String: Double] = [
        "Swift": 1.0,
        "Objective-C": 0.9,
        "UIKit": 0.8,
        "SwiftUI": 0.85,
        "CoreData": 0.75,
        "Networking": 0.9,
        "MVC/MVVM": 0.75,
        "Git": 0.9,
        "CI/CD": 0.5,
        "Agile": 0.95
    ]



    var body: some View {
        
      
        VStack {
            Text("Skills")
                .font(.title)
                .frame( alignment: .leading)
                .padding(.leading, 10)
            VStack(spacing: 0) {
                    ForEach(Array(skills.keys), id: \.self) { skill in
                        if let indicator = skills[skill] {
                            SkillsIndicatorView(skill: skill, percentage: indicator)
                        }
                    }
            }
        }//
        .padding(.leading, 20)
            .background(Color.white)  // Background color to make shadow visible
                .shadow(color: .gray, radius: 10, x: 0, y: 5)
      
    }
}

#Preview {
    ProjectActionSheet()
}
