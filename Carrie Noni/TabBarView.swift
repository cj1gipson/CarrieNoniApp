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
    
    @State var selectedIndex = 0
    let icons = [ "home4", "Juice", "Nfluence-1", "shop"
    ]
    var body: some View {
        
        VStack{
            
            ZStack{
                
                switch selectedIndex{
                case 0:
                        ContentView()
                case 1:
                        noniJuiceView()
                case 2:
                        NfluenceView()
                default:
                        LoginView()
                        //shopview()
                }
            }
            //.padding(.top, -150.0)
                //.background(Color(CNColor1))
            HStack(spacing: -9.0){
                ForEach(0..<4, id: \.self){number in
                    Spacer()
                    Button(action:{self.selectedIndex = number}, label: {
                        
                    if(selectedIndex == number){
                        Image(icons[number])
                            .font(.system(size: 45, weight: .regular, design: .default)).padding().padding(.horizontal, -6.0)
                            .foregroundColor(selectedIndex == number ? Color("Pink") : Color("Dark-Blue-1"))
                            .shadow(color: Color("Pink"), radius: 3)
                    } else{
                        Image(icons[number])
                            .font(.system(size: 45, weight: .regular, design: .default)).padding().padding(.horizontal, -6.0)
                            .foregroundColor(selectedIndex == number ? Color("Pink") : Color("Dark-Blue-1"))
                    }
                            
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
