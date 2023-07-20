//
//  WhatsPoppinSubPage.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 5/31/23.
//

import SwiftUI
import WebKit
import AVKit


struct WhatsPoppinSubPage: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            //------------------------- Background -----------------------------
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(gradient: gradient, center: .topLeading, startRadius: 5, endRadius: 250)
                )
                .overlay(Color("Dark-Blue")).opacity(0.6)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            //-------------------------- Header ------------------------------
           
                VStack{
                    HStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Image("cn")
                            .imageScale(.large)
                            .padding(.leading, 45.0)
                            .padding(.top)
                            .font(Font.system(size:45, weight: .heavy))
                            .foregroundColor(Color("Pink"))
                            .shadow(color: Color("Pink"), radius: 3)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.bottom, 10.0)
                    
                //-------------------------- Feed ------------------------------
                    ScrollView(){
                    mainFeedWPsub()
                        .preferredColorScheme(.dark)
                    }
                }
        }
    }
}

struct mainFeedWPsub: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        Button(action: {
            
        }) {
            ZStack{
                VStack{
                    Image("Whats-Poppin")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:355, height: 355, alignment: .center)
                        .clipped()
                        .cornerRadius(20)
                }.padding(.trailing, 10.0)
                
            }.padding(.bottom, 5.0)
        }
        
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        Button("Dismiss") {
            dismiss()
        }
        .padding(.top, 20.0)
        .font(.title)
        .foregroundColor(Color("Pink"))
        .shadow(color: Color("Pink"), radius: 3)
        
    }
}

struct WhatsPoppinSubPage_Previews: PreviewProvider {
    static var previews: some View {
        WhatsPoppinSubPage()
            .preferredColorScheme(.dark)
    }
}



