//
//  SettingsView.swift
//  Carrie Noni
//
//  Created by Deangelo Stewart on 5/31/23.
//

import SwiftUI

struct SettingsView: View {
    
    
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))






    let CNColor1 = UIColor(red:211/255.0,
                           green: 80/255.0,
                           blue: 124/255.0,
                           alpha: 1)


    let CNColor2 = UIColor(red:251/255.0,
                           green: 153/255.0,
                           blue: 194/255.0,
                           alpha: 1)


    let CNColor3 = UIColor(red:255/255.0,
                           green: 255/255.0,
                           blue: 255/255.0,
                           alpha: 1)


    let gradient = Gradient(colors: [Color("Light-Blue"), Color("Dark-Blue")])
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        
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
                        feed()
                    }
                }

        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
