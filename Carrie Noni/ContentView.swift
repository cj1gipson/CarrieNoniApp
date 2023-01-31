
//
//  ContentView.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 1/10/22.
//

import SwiftUI
import WebKit
import AVKit

// Start the Breakout for a controller



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

struct ContentView: View {
    var body: some View {
        
        ZStack{
            //------------------------- Background -----------------------------
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(gradient: gradient, center: .topLeading, startRadius: 5, endRadius: 250)
                )
                .overlay(Color("Dark-Blue")).opacity(0.6)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            //-------------------------- Welcome ------------------------------
            ScrollView(){
            HStack{
                VStack(alignment: .leading){
                    HStack{
                    Text("Welcome")
                        .font(.system(size: 15, weight: .light))
                        .padding(.leading)
                    Image("World2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:40, height: 30, alignment: .center)
                        .clipped()
                    }.padding(.bottom, -18.0)
                        .padding(.leading, 5.0)
                    Text("Juice World")
                        .font(.system(size: 30, weight: .bold))
                        .padding(.leading)
                    Spacer()
                }
                .padding(.top)
                Spacer()
                VStack(alignment: .leading){
                    
                    Button(action: {
                        
                    }) {
                    Image("Carrie24")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:60, height: 60, alignment: .center)
                        .clipped()
                        .cornerRadius(20)
                    }
                }
                .padding(.leading, 90.0)
                Spacer()
            }
            .padding(.leading)
            .padding(.bottom, 40.0)
                
            //-------------------------- Feed ------------------------------
            
            feed()
            }
        }
    }
}


struct feed: View {
    var body: some View {
        
        //-------------------------- Trending ------------------------------
        VStack{
            HStack{
                Text("Trending")
                    .font(.system(size: 21, weight: .bold))
                    .padding(.trailing, 170.0)
                
                Button(action: {
                    
                }) {

                Text("View More")
                    .foregroundColor(Color("Pink"))
                }
                
            }
        ScrollView(.horizontal){
            
        HStack{
            
            Image("Carrie24")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:210, height: 240, alignment: .center)
                .clipped()
                .cornerRadius(12)
                .padding(.leading, 20.0)
                .padding(.trailing, 10.0)
                
                    
            
            VideoView(videoID: "JQAJOlYYZ4g")
                .frame(minWidth: 10, idealWidth: 210, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 240, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.trailing, 10.0)
                
            
            VideoView(videoID: "Zw57CgDOU1o")
                .frame(minWidth: 10, idealWidth: 210, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 240, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.trailing, 10.0)

            
            VideoView(videoID: "7dAQXvUDzM8")
                .frame(minWidth: 10, idealWidth: 210, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 240, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.trailing, 10.0)
        }
            }
        
        }
        //-------------------------- Recommended ------------------------------
        VStack{
            HStack{
                Text("Recommended")
                    .font(.system(size: 21, weight: .bold))
                    .padding(.trailing, 200.0)
            }
        }.padding(.top, 40.0)
        
        HStack{
            
            Button(action: {
                
            }) {
                
                Image("CNInsta")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:180, height: 180, alignment: .center)
                    .clipped()
                    .cornerRadius(12)
            }
            
                
            Button(action: {
                
            }) {
                Image("CNBook2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:180, height: 180, alignment: .center)
                    .clipped()
                    .cornerRadius(12)
            }
            
        }
        
        HStack{
            
            Button(action: {
                
            }) {
                Image("CNTwitter2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:180, height: 180, alignment: .center)
                    .clipped()
                    .cornerRadius(12)
            }
            
            Button(action: {
                
            }) {
                Image("CNYT")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:180, height: 180, alignment: .center)
                    .clipped()
                    .cornerRadius(12)
            }

        }.padding(.bottom, 35.0)
        
    }
}

struct VideoView: UIViewRepresentable{
    
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL (string: "https://www.youtube.com/embed/\(videoID)")
        else {
            return
        }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}

struct VideoView2: UIViewRepresentable{
    
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL (string: "https://www.youtube.com/watch?v=N25Q2ud7Cvg")
        else {
            return
        }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
