//
//  HomePage.swift
//  PersonalPortfolio
//
//  Created by Sushanth on 15/08/24.
//

import SwiftUI

enum NavigationOption: Int, CaseIterable {
    case instagram = 0
    case medium
    case github
    case linkedIn
    case more
    
    func getImageName() -> String {
        switch self {
        case .instagram:
            return "insta"
        case .medium:
            return "medium"
        case .github:
            return "github"
        case .linkedIn:
            return "linkedIn"
        case .more:
            return "more"
        }
    }
    
}

struct HomePage: View {
    // var navaigation
    @State private var textMessage = ""
    @State private var isHidden = false
    @State private var showProjectesActionSheet = false
    var body: some View {
        NavigationStack {
            VStack {
                ZStack() {
                  
                    
                    Image("profile")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                    // .renderingMode(.template)
                    Group {
                        VStack {
                            Text("\(textMessage)")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                            
                            
                            Text("Sushanth ")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.trailing)
                            
                            Text("iOS Developer")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        }
                       // .animation(.easeInOut(duration:1.0))
                        .padding()
                        
                        
                    }.frame(maxWidth: UIScreen.main.bounds.width, maxHeight:.infinity, alignment: .topLeading)
                        
                       
                    
                    
                    if isHidden {
                        Group() {
                            VStack(alignment: .leading) {
                                ForEach(NavigationOption.allCases, id: \.self) { option in
                                    Button(action: {
                                        handleButtonTap(option: option)
                                    }, label: {
                                        Image("\(option.getImageName())")
                                            .foregroundColor(.black)
                                        // .padding(.leading, 30)
                                            .frame(width: 50, height: 50)
                                    })
                                    
                                }
                                
                            }
                            
                            
                            
                            
                        }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .bottomLeading)
                            .padding([.leading, .bottom], 80)
                    }
                    
                    Group() {
                        VStack(alignment: .trailing) {
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                // .padding(.leading, 30)
                                    .frame(width: 50, height: 50)
                            })
                            Spacer()
                            
                            
                        }
                        .padding(.trailing, 80)
                        
                        
                        
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .trailing)
                    //.padding([.leading, .bottom], 80)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(.black)
                .background(Color.red)
                .background(Color.purple)
                .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.6))
                .onAppear(perform: {
                    //showText = true
                    withAnimation(Animation.bouncy(duration: 5), {
                        self.textMessage = "Hi This is"
                        self.isHidden = true
                    })
                    
                })
            }.background(Color.red)
            
        }
        
        .sheet(isPresented: $showProjectesActionSheet, onDismiss: {
            showProjectesActionSheet = false
        }, content: {
            ProjectActionSheet()
                .shadow(radius: 10)
                .presentationDetents([.medium])
        })
    }
    
    func handleButtonTap(option: NavigationOption) {
        switch option {
        case .instagram:
            break
        case .medium:
            break
        case .github:
            break
        case .linkedIn:
            break
        case .more:
            showProjectesActionSheet = true
            break
            
        }
    }
}

#Preview {
    HomePage()
}
