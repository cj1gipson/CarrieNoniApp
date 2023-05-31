//
//  PullUpSubPage.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 5/31/23.
//

import SwiftUI

struct PullUpSubPage: View {
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
                            .padding(.leading, 65.0)
                            .font(Font.system(size:45, weight: .heavy))
                            .foregroundColor(Color("Pink"))
                            .shadow(color: Color("Pink"), radius: 3)
                        Spacer()
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image("Settings")
                                .imageScale(.large)
                                .font(Font.system(size:45, weight: .heavy))
                                .foregroundColor(Color("Faded-Blue"))
                                .padding(.leading, 20.0)
                            }
                        
                        Spacer()
                    }
                    .padding(.bottom, 10.0)
                    
                //-------------------------- Feed ------------------------------
                    ScrollView(){
                    mainFeedPullUpSub()
                    }
                }

        }
        
    }
}

struct mainFeedPullUpSub: View {
    var body: some View {
        ZStack{
        }
    }
}

struct PullUpSubPage_Previews: PreviewProvider {
    static var previews: some View {
        PullUpSubPage()
            .preferredColorScheme(.dark)
    }
}
