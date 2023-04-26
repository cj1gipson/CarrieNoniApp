//
//  LoginView.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 2/2/22.
//

import Foundation
import SwiftUI
import WebKit
import AVKit
import UIKit

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


                
                

                
                //.padding(.bottom, 10.0)
            }
            
            

            //view.addSubview(WatchListTable)
            ///WatchListTable.dataSource = self
            //UINavigationItem.setRightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, //action: #selector(<#T##@objc method#>))
            
           
            //func viewDidLoad(){
                //super.viewDidLoad()
                //view.addSubview(<#T##view: UIView##UIView#>)
              //  WatchListTable.dataSource = self
            //}
            
            
            
            
            ///error Closure containing a declaration cannot be used with result builder 'ViewBuilder'
            ///
           
            
        }
        
    
    }

    ///trying to get  table on the sceen to get a list to display our watch list of videos when selected an confimed
    
    //func tableView(_ tablesView: UITableView, numberOfROwsInSection section: Int) -> Int {
    //    0
    //}
    
    //func viewDidLayoutSubViews(){
    //super.viewDidLayoutSubViews()
    //  WatchListTable.frame = self
    //}
    
    //func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    //UITableViewCell {
    //    _ = tableView.dequeueReusableCell(withIdentifier: "cell", for: <#T##IndexPath#>)
    //}
    
}

