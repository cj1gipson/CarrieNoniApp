//
//  ContentView.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 1/10/22.
//


import SwiftUI
import WebKit
import AVKit
import UIKit


// Start the Breakout for a controller


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






struct ContentView: View {
    @State private var showSettings = false

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
            //-------------------------- Settings Button ------------------------------
                        Button(action: {
                            showSettings.toggle()
                            print("Content view clicked")
                        }) {
                        Image("Settings")
                            .imageScale(.large)
                            .font(Font.system(size:45, weight: .heavy))
                            .foregroundColor(Color("Faded-Blue"))
                            .padding(.leading, 20.0)
                        }.sheet(isPresented: $showSettings) {
                            SettingsView()
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




struct feed: View {
    
    @State private var ShowPullUpSubPage = false
    
    var body: some View {
        
        
            //-------------------------- Trending ------------------------------
            Group{
                VStack{
                    HStack{
                        Text("Trending")
                            .font(.system(size: 21, weight: .bold))
                            .padding(.trailing, 170.0)
                        
                        Button(action: {
                            
                        }) {


                        Text("View More")
                            .foregroundColor(Color("Pink"))
                            .shadow(color: Color("Pink"), radius: 3)
                        }
                        
                    }
                    Divider()
                        .padding(.bottom, 2.0)
                        .background(Color("Pink"))
                        .frame(width: 380)
                        .padding(.bottom, 10.0)
                        .shadow(color: Color("Pink"), radius: 3)
                    
                ScrollView(.horizontal){
                    
                HStack{
                    
                    VideoView(videoID: "moY_h85RZ6g")
                        .frame(minWidth: 10, idealWidth: 210, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 240, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(12)
                        .padding(.trailing, 10.0)
                        .padding(.leading, 20.0)
                        
                            
                    
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
                .padding(.top, 20.0)
            
            }
            //-------------------------- Recommended ------------------------------
            
            Group{
                VStack{
                    HStack{
                        Text("Recommended")
                            .font(.system(size: 21, weight: .bold))
                            .padding(.trailing, 200.0)
                    }
                }.padding(.top, 40.0)
                    .padding(.trailing, 5.0)
                Divider()
                    .padding(.bottom, 2.0)
                    .background(Color("Pink"))
                    .frame(width: 380)
                    .padding(.bottom, 10.0)
                    .shadow(color: Color("Pink"), radius: 3)
                
                
                //NavigationView {
                Button(action: {
                    ShowPullUpSubPage = true
                }) {
                    ZStack{
                        Rectangle()
                            .frame(width: 360, height: 120)
                            .cornerRadius(12)
                            .foregroundColor(Color("Faded-Blue"))
                            .opacity(0.7)
                        VStack{
                            Image("Pull-Up")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:130, height: 125, alignment: .center)
                                .clipped()
                                .cornerRadius(20)
                        }.padding(.trailing, 240.0)
                        
                        VStack{
                            Text("Pull-Up Series")
                                .fontWeight(.semibold)
                                .padding(.leading, 35.0)
                                .foregroundColor(.white)
                        }
                    }.padding(.bottom, 5.0)
                }
                NavigationLink("", destination:  PullUpSubPage())
                //}
                
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
            
            Group{
                
                Button(action: {
                    
                }) {
                    ZStack{
                        Rectangle()
                            .frame(width: 360, height: 120)
                            .cornerRadius(12)
                            .foregroundColor(Color("Faded-Blue"))
                            .opacity(0.7)
                        VStack{
                            Image("The-Truth")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:125, height: 125, alignment: .center)
                                .clipped()
                                .cornerRadius(20)
                        }.padding(.trailing, 240.0)
                        
                        VStack{
                            Text("The Truth")
                                .fontWeight(.semibold)
                                .padding(.leading, 2.0)
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
                            Image("Carrie3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:125, height: 125, alignment: .center)
                                .clipped()
                                .cornerRadius(20)
                        }.padding(.trailing, 240.0)
                        
                        VStack{
                            Text("CopyWrite")
                                .fontWeight(.semibold)
                                .padding(.leading, 7.0)
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
                            Image("Carrie17")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:125, height: 125, alignment: .center)
                                .clipped()
                                .cornerRadius(20)
                        }.padding(.trailing, 240.0)
                        
                        VStack{
                            Text("Freelance")
                                .fontWeight(.semibold)
                                .padding(.leading, 1.0)
                                .foregroundColor(.white)
                        }
                    }.padding(.bottom, 5.0)
                }
            }
                
            
            
            VStack{
                HStack{
                    Text("Socials")
                        .font(.system(size: 21, weight: .bold))
                        .padding(.trailing, 200.0)
                }
            }.padding(.top, 40.0)
                .padding(.trailing, 80.0)
            Divider()
                .padding(.bottom, 2.0)
                .background(Color("Pink"))
                .frame(width: 380)
                .padding(.bottom, 10.0)
                .shadow(color: Color("Pink"), radius: 3)
            
            
            
            


            HStack{
                
                Button(action: {
                    guard let instagram = URL(string: "https://instagram.com/carrienoni_?igshid=MzRlODBiNWFlZA=="),
                          UIApplication.shared.canOpenURL(instagram)
                    else{
                        return
                    }
                    UIApplication.shared.open(instagram,options: [:], completionHandler: nil)
                }) {
                    
                    Image("ig-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200, height: 200, alignment: .center)
                        .background(Color("Faded-Blue"))
                        .clipped()
                        .cornerRadius(12)
                        .shadow(color: Color("Pink"), radius: 3)
                }
                
                    
                Button(action: {
                    guard let facebook = URL(string: "https://www.facebook.com/Noni.Sophia?mibextid=LQQJ4d"),
                          UIApplication.shared.canOpenURL(facebook)
                    else{
                        return
                    }
                    UIApplication.shared.open(facebook,options: [:], completionHandler: nil)
                }) {
                    Image("fb-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200, height: 200, alignment: .center)
                        .background(Color("Pink"))
                        .clipped()
                        .cornerRadius(12)
                        .shadow(color: Color("Faded-Blue"), radius: 3)
                }
                
            }
            
            HStack{
                
                Button(action: {
                    guard let twitter = URL(string: "https://twitter.com/carrienoni?s=11&t=q8nT6GEL6IjPaPXlCibpVw"),
                          UIApplication.shared.canOpenURL(twitter)
                    else{
                        return
                    }
                    UIApplication.shared.open(twitter,options: [:], completionHandler: nil)
                }) {
                    Image("twitter-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200, height: 200, alignment: .center)
                        .background(Color("Pink"))
                        .clipped()
                        .cornerRadius(12)
                        .shadow(color: Color("Faded-Blue"), radius: 3)
                }
                
                Button(action: {
                    guard let youtube = URL(string: "https://youtube.com/@CarrieNoni"),
                          UIApplication.shared.canOpenURL(youtube)
                    else{
                        return
                    }
                    UIApplication.shared.open(youtube,options: [:], completionHandler: nil)
                }) {
                    Image("yt-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200, height: 200, alignment: .center)
                        .background(Color("Faded-Blue"))
                        .clipped()
                        .cornerRadius(12)
                        .shadow(color: Color("Pink"), radius: 3)
                }


            }.padding(.bottom, 32.0)
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
