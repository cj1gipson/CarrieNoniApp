//
//  NfluenceSubPage.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 6/14/23.
//

import SwiftUI

struct NfluenceSubPage: View {
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

struct NfluenceSubPage_Previews: PreviewProvider {
    static var previews: some View {
        NfluenceSubPage()
    }
}
