//
//  Nflunece.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 1/13/22.
//

import SwiftUI
import WebKit
import AVKit

let icons = ["hair", "Juice", "home4", "nfluence","shop"
]

struct NfluenceView: View {
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
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
                Image("Black-N")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(Color.black)
                    .opacity(1.0)
                VStack{
                ScrollView(.vertical){
                    VStack{
                        ScrollView(.horizontal){
                            HStack(spacing: 3){
                                
                                VideoView(videoID: "xtV00tteIN4")
                                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(12)
                                    .padding(.horizontal, 20.0)
                            }
                            
                        }
                        Text("Winter 2021 Winner Luh Leeks")
                            .font(.body)
                            .fontWeight(.bold)
                    }
                    .padding(.top, 3.0)
                    .padding(.bottom, 11.0)

                    Spacer()
                    
                    VStack{
//-----------------------------------------------------------------------------------------------------------
//                                   FEATURED SECTION
//-----------------------------------------------------------------------------------------------------------
                        HStack{
                        Text("FEATURES")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color-2"))
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .padding(.trailing, 3.0)
                            
                            
                            Image(systemName: "star.fill")
                                .imageScale(.large)
                                .font(Font.system(size:17, weight: .heavy))
                                .foregroundColor(Color("Color-2"))
                                .padding(.trailing, 200.0)

                            
                        }.padding(.bottom, 5.0)
                        .padding(.top, 5.0)
                            
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Color-4"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                        
                        
                        Image("WaveInt")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:390, height: 250, alignment: .center)
                            .background(Color.purple)
                            .clipped()
                            .cornerRadius(12)
                            .padding(.bottom, 20.0)
                    }.padding(.top, 7.0)
                     
                    
                        
//-----------------------------------------------------------------------------------------------------------
//                                   VIDEOS SECTION
//-----------------------------------------------------------------------------------------------------------
                    VStack{
                        HStack{
                        Text("VIDEOS")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color-2"))
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .padding(.trailing, 3.0)
                            
                            
                            Image(systemName: "video.fill")
                                .imageScale(.large)
                                .font(Font.system(size:17, weight: .heavy))
                                .foregroundColor(Color("Color-2"))
                                .padding(.trailing, 230.0)
                                
                        }.padding(.bottom, 5.0)
                        .padding(.top, 5.0)
                        
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Color-4"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                        
                        Text("N'Fluence Countdown Shows")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        ScrollView(.horizontal){
                        HStack{

                            
                            Image("WinterNfluence")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                .overlay(ImageOverlay5(), alignment: .bottomTrailing)

                            
                            Image("FallNfluence")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                .overlay(ImageOverlay6(), alignment: .bottomTrailing)
                            
                            Image("SummerNfluence")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                .overlay(ImageOverlay7(), alignment: .bottomTrailing)
                            
                            Image("nfluenceep1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                .overlay(ImageOverlay8(), alignment: .bottomTrailing)
                        }
                            
                            
                        }
                        
                        Text("N'Fluence Interviews")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            .padding(.vertical, 10.0)
                    
                        
                        
                        ScrollView(.horizontal){
                        HStack{
                            Image("LeeksInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                            
                            Image("EliInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                            
                            
                            Image("ErnieInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                            
                            Image("WaveInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                        }
                        }.padding(.bottom, 20.0)
                        .padding(.top, 10.0)

                    }
                   
//-----------------------------------------------------------------------------------------------------------
//                                   WALL OF FAME SECTION
//-----------------------------------------------------------------------------------------------------------
                    VStack{
                        HStack{
                            
                        
                        Text("WALL OF FAME")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color-2"))
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .padding(.trailing, 2.0)
                            
                            
                            
                            Image(systemName: "crown.fill")
                                .imageScale(.large)
                                .font(Font.system(size:17, weight: .heavy))
                                .foregroundColor(Color("Color-2"))
                                .padding(.trailing, 130.0)
                                
                        }
                        .padding(.bottom, 5.0)
                        .padding(.top, 5.0)
                        
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Color-4"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                        
                        ScrollView(.horizontal){
                            HStack{
                                Image("Leeks")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.trailing, 20.0)
                                    .padding(.leading, 10.0)
                                    .frame(width:290, height: 450, alignment: .center)
                                    .background(Color.purple)
                                    .clipped()
                                    .cornerRadius(12)
                                    .overlay(ImageOverlay4(), alignment: .bottomTrailing)
                                
                                Image("Eli")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.trailing, 20.0)
                                    .padding(.leading, 10.0)
                                    .frame(width:290, height: 450, alignment: .center)
                                    .background(Color.purple)
                                    .clipped()
                                    .cornerRadius(12)
                                    .overlay(ImageOverlay3(), alignment: .bottomTrailing)
                                
                                Image("ERNIEZ")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.trailing, 20.0)
                                    .padding(.leading, 10.0)
                                    .frame(width:290, height: 450, alignment: .center)
                                    .background(Color.purple)
                                    .clipped()
                                    .cornerRadius(12)
                                    .overlay(ImageOverlay(), alignment: .bottomTrailing)
                                Image("CAMWILL")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.trailing, 20.0)
                                    .padding(.leading, 10.0)
                                    .frame(width:290, height: 450, alignment: .center)
                                    .background(Color.purple)
                                    .clipped()
                                    .cornerRadius(12)
                                    .overlay(ImageOverlay2(), alignment: .bottomTrailing)
                                
                                

                            }.padding(.bottom, 20.0)
                            
                        }
                    }
                    
                    VStack{
                    HStack{
                        Text("GAMES")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color-2"))
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            
                        Image(systemName: "gamecontroller.fill")
                            .imageScale(.large)
                            .font(Font.system(size:17, weight: .heavy))
                            .foregroundColor(Color("Color-2"))
                            .padding(.trailing, 230.0)
                        
                        }
                        
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Color-4"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                            
                    }
                    
                  
                    VStack{
                    HStack{
                        Text("FOLLOW US")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color-2"))
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            
                        Image(systemName: "heart.fill")
                            .imageScale(.large)
                            .font(Font.system(size:17, weight: .heavy))
                            .foregroundColor(Color("Color-2"))
                            .padding(.trailing, 180.0)
                        
                        }
                        
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Color-4"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                        
                        HStack{
                            Image("NInsta")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:180, height: 180, alignment: .center)
                                .clipped()
                                .cornerRadius(12)
                                
                            
                            Image("NBook")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:180, height: 180, alignment: .center)
                                .clipped()
                                .cornerRadius(12)
                            
                        }
                        
                        HStack{
                            Image("NTwitter")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:180, height: 180, alignment: .center)
                                .clipped()
                                .cornerRadius(12)
                            
                            Image("NYT")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:180, height: 180, alignment: .center)
                                .clipped()
                                .cornerRadius(12)
                        }.padding(.bottom, 35.0)
                            
                    }

                    
                    
                    }
                    
                }
                
            }
            .padding(.bottom, -34.0)
            }
            
            Spacer()
            
        }
        
    }
    
}

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Summer 2021 Winner: Ernie Z")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageOverlay2: View {
    var body: some View {
        ZStack {
            Text("Spring 2021 Winner: Cam Will")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageOverlay3: View {
    var body: some View {
        ZStack {
            Text("Fall 2021 Winner: Eli $tones")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageOverlay4: View {
    var body: some View {
        ZStack {
            Text("Winter 2021 Winner: Luh Leeks")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageOverlay5: View {
    var body: some View {
        ZStack {
            Text("Episode 3")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageOverlay6: View {
    var body: some View {
        ZStack {
            Text("Episode 2")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageOverlay7: View {
    var body: some View {
        ZStack {
            Text("Episode 1")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ImageOverlay8: View {
    var body: some View {
        ZStack {
            Text("Pilot Episode")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}



struct VideoView3: UIViewRepresentable{
    
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


struct Button1: View {
    var body: some View{
        Button("Click Me") {
            print("hello world")
        }
    }
}



struct NfluenceView_Previews: PreviewProvider {
    static var previews: some View {
        NfluenceView()
            .preferredColorScheme(.dark)
    }
    
}
