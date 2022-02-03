//
//  ContentView.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 1/10/22.
//

import SwiftUI
import WebKit
import AVKit
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


struct ContentView: View {
    var body: some View {
        
        
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack{
            HStack{
                Button(action: {
                    
                }) {
                Image("Menu")
                    .imageScale(.large)
                    .font(Font.system(size:30, weight: .heavy))
                    .foregroundColor(Color(CNColor1))
                }
                
                Spacer()
                
                Image("cn")
                    .imageScale(.large)
                    .padding(.leading, 0.0)
                    .font(Font.system(size:45, weight: .heavy))
                    .foregroundColor(Color(CNColor1))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                Image(systemName: "message.circle")
                    .imageScale(.large)
                    .font(Font.system(size:25, weight: .heavy))
                    .foregroundColor(Color(CNColor1))
                }
            }
            .padding()
            
            
            ZStack{
                Color.white
                VStack{
                ScrollView(.vertical){
                    VStack{
                            HStack(spacing: 3){
                                Image("Carrie1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:390, height: 250, alignment: .center)
                                    .background(Color(CNColor1))
                                    .clipped()
                            }
                            
                    }
                    .padding(.top, 5.0)
                    
                    feed()
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

struct feed: View {
    var body: some View {
    

        HStack{
            Text("Carrie Noni is a digital savvy millennial journalist with a passion for entertainment, hair, and everything in between!")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(CNColor2))
                .multilineTextAlignment(.center)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        
        HStack{
            Image("Carrie4")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:350, height: 500, alignment: .center)
                .background(Color(CNColor1))
                .clipped()
                
        }
        Spacer()
        
        HStack{
            Image("Title1")
                .resizable()
                .frame(width:250, height: 55, alignment: .center)
                .background(Color(CNColor3))
                .clipped()
        }
        
        HStack{
            Button(action: {
                
            }) {
            Image("mediaReel")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:350, height: 250, alignment: .center)
                .background(Color.purple)
                .clipped()
                .cornerRadius(12)
                .padding(.bottom, 20.0)
        }.padding(.top, 7.0)
        }
        HStack{
            Image("Title2")
                .resizable()
                .padding(.top, 8.0)
                .frame(width:200, height: 45, alignment: .center)
                .background(Color(CNColor3))
                .clipped()
            
        }
        ScrollView(.horizontal){
        HStack{
            VideoView(videoID: "moY_h85RZ6g")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 20.0)
            
            VideoView(videoID: "JQAJOlYYZ4g")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 24)
            
            VideoView(videoID: "Zw57CgDOU1o")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 24)
            
            VideoView(videoID: "7dAQXvUDzM8")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 24)
        }
        
        }
        
        HStack{
            Image("Title6")
                .resizable()
                .padding(.top, 8.0)
                .frame(width:260, height: 45, alignment: .center)
                .background(Color(CNColor3))
                .clipped()
        }
        
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
