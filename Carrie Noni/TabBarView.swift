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
            .padding(.top, -100.0)
            Spacer()
            
            //Divider()
                
                //.background(Color(CNColor1))
            HStack{
                ForEach(0..<5, id: \.self){number in
                    Spacer()
                    Button(action:{self.selectedIndex = number}, label: {
                        Image(icons[number])
                            .font(.system(size: 50, weight: .regular, design: .default))
                            .foregroundColor(selectedIndex == number ? .white : Color(CNColor1))
                        
                    })
                    Spacer()
                }
                
            }
            
        }
    }
   
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        tabBarView()
            .preferredColorScheme(.dark)
        
    }
}
