//
//  PullUpSubPage.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 5/31/23.
//

import SwiftUI

struct PullUpSubPage: View {
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
                    mainFeedPullUpSub()
                        Button("Dismiss") {
                            dismiss()
                        }
                        .font(.title)
                    }
                }

            // Issue with subscreen cant push anything screen on top of screen.
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(gradient: gradient, center: .topLeading, startRadius: 5, endRadius: 250)
                )
                .overlay(Color("Dark-Blue")).opacity(0.6)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct mainFeedPullUpSub: View {
    var body: some View {
        ZStack{
            Button(action: {
                
            }) {
                ZStack{
                    Rectangle()
                        .frame(width: 360, height: 120)
                        .cornerRadius(12)
                        .foregroundColor(Color("Faded-Blue"))
                        .opacity(0.7)
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:125, height: 125, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 240.0)
                    
                    VStack{
                        Text("Whats Poppin")
                            .fontWeight(.semibold)
                            .padding(.leading, 25.0)
                            .foregroundColor(.white)
                        Text("Series")
                            .fontWeight(.semibold)
                            .padding(.leading, -35.0)
                            .padding(.top, 0.1)
                            .foregroundColor(.white)
                    }
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    Rectangle()
                        .frame(width: 360, height: 120)
                        .cornerRadius(12)
                        .foregroundColor(Color("Faded-Blue"))
                        .opacity(0.7)
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:125, height: 125, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 240.0)
                    
                    VStack{
                        Text(" Nfluence")
                            .fontWeight(.semibold)
                            .padding(.leading, -18.0)
                            .foregroundColor(.white)
                        Text("Series")
                            .fontWeight(.semibold)
                            .padding(.leading, -35.0)
                            .padding(.top, 0.1)
                            .foregroundColor(.white)
                    }
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    Rectangle()
                        .frame(width: 360, height: 120)
                        .cornerRadius(12)
                        .foregroundColor(Color("Faded-Blue"))
                        .opacity(0.7)
                    VStack{
                        Image("Carrie1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:125, height: 125, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 240.0)
                    
                    VStack{
                        Text("Bucks")
                            .fontWeight(.semibold)
                            .padding(.leading, -35.0)
                            .foregroundColor(.white)
                        Text("Ambassador")
                            .fontWeight(.semibold)
                            .padding(.leading, 18.0)
                            .padding(.top, 0.1)
                            .foregroundColor(.white)
                    }
                }.padding(.bottom, 5.0)
            }
        }
    }
}

struct PullUpSubPage_Previews: PreviewProvider {
    static var previews: some View {
        PullUpSubPage()
            .preferredColorScheme(.dark)
    }
}
