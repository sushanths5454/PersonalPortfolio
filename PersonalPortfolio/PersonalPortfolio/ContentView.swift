//
//  ContentView.swift
//  PersonalPortfolio
//
//  Created by Sushanth on 15/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HomePage()
        }
        .background(Color.purple)
        .background(Color.black)
        .foregroundColor(.red)
        .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.6))
       // .padding()
    }
}

#Preview {
    ContentView()
}
