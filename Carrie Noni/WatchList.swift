//
//  LoginView.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 2/2/22.
//

import Foundation
import SwiftUI
import WebKit
import AVKit
import UIKit
//-------------------------- WatchList ------------------------------

struct WatchList: View{
        

        
        @State var index = 0
        
        public var WatchListTable: UITableView = {
            let WatchListTable = UITableView()
            WatchListTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            return WatchListTable
        }()
        
        
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
                            Image("Menu")
                                .imageScale(.large)
                                .font(Font.system(size:30, weight: .heavy))
                                .foregroundColor(Color("Faded-Blue"))
                                .padding(.leading, 30.0)
                        }
                        Spacer()
                    }
                    Spacer()

                    var people = [
                        Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
                        Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
                        Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
                        Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
                    ]
                    
                    
                    if #available(iOS 16.0, *) {
                        Table(people) {
                            TableColumn("Given Name", value: \.givenName)
                            TableColumn("Family Name", value: \.familyName)
                            TableColumn("E-Mail Address", value: \.emailAddress)
                        }
                    } else {
                        // Fallback on earlier versions
                    }
                    
                    //.padding(.bottom, 10.0)
                }
                
        }
                
    }
            
}
    
    struct Person: Identifiable {
        let givenName: String
        let familyName: String
        let emailAddress: String
        let id = UUID()

        var fullName: String { givenName + " " + familyName }
    }

//-------------------------- WatchList End ------------------------------
