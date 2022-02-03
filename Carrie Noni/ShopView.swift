//
//  ShopView.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 1/13/22.
//

import Foundation
import SwiftUI
import WebKit
import AVKit


struct shopview: View {
    var body: some View {

        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack{
            HStack{
                
                Image("Menu")
                    .imageScale(.large)
                    .font(Font.system(size:30, weight: .heavy))
                    .foregroundColor(Color(CNColor1))
                
                Spacer()
                
                Image("cn")
                    .imageScale(.large)
                    .padding(.leading, 0.0)
                    .font(Font.system(size:45, weight: .heavy))
                    .foregroundColor(Color(CNColor1))
                
                Spacer()
                
                Image(systemName: "message.circle")
                    .imageScale(.large)
                    .font(Font.system(size:25, weight: .heavy))
                    .foregroundColor(Color(CNColor1))
            }
            .padding()
            ZStack{
                Color.black
                VStack{
                ScrollView(.vertical){
                    VStack{
                        
                            HStack(spacing: 3){
                                Image("")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:390, height: 250, alignment: .center)
                                    .background(Color.black)
                                    .clipped()
                            }
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Text("MERCH COMING SOON")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(CNColor1))
                            
                    }
                    .padding(.top, 5.0)
                    
                    Spacer()
                    
                }
                    
                }
            }
            .padding(.bottom, -34.0)
            
        }
            
            Spacer()
            
        }
    }
}


struct shopview_Previews: PreviewProvider {
    static var previews: some View {
        shopview()
            .preferredColorScheme(.dark)
        
    }
}

