//
//  TabBarView.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 1/13/22.
//

import Foundation
import SwiftUI
import WebKit
import AVKit

struct tabBarView: View {
    
    @State var selectedIndex = 2
    let icons = ["NaturalNoni2", "Juice", "home4", "Nfluence-1","shop"
    ]
    var body: some View {
        
        VStack{
            
            ZStack{
                
                switch selectedIndex{
                case 0:
                    NavigationView{
                        NaturalNoniView()
                    }
                case 1:
                    NavigationView{
                        noniJuiceView()
                    }
                case 2:
                    NavigationView{
                        ContentView()
                    }
                case 3:
                    NavigationView{
                        NfluenceView()
                    }

                default:
                    NavigationView{
                        LoginView()
                        //shopview()
                    }
                }
            }
            //.padding(.top, -150.0)
                //.background(Color(CNColor1))
            HStack(spacing: -35.0){
                ForEach(0..<5, id: \.self){number in
                    Spacer()
                    Button(action:{self.selectedIndex = number}, label: {
                        Image(icons[number])
                            .font(.system(size: 40, weight: .regular, design: .default)).padding().padding(.horizontal, -6.0)
                            .foregroundColor(selectedIndex == number ? Color("Pink") : Color("Dark-Blue-1"))
                        
                    })
                    Spacer()
                }
               
            }.background(Color("Dark-Blue"))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
    }
   
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        tabBarView()
            .preferredColorScheme(.dark)
        
    }
}
