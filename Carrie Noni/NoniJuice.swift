//
//  NoniJuice.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 1/14/22.
//

import Foundation

import SwiftUI
import WebKit
import AVKit

let NJColor1 = UIColor(red:248/255.0,
                       green: 133/255.0,
                       blue: 236/255.0,
                       alpha: 1)

let NJColor2 = UIColor(red:247/255.0,
                       green: 240/255.0,
                       blue: 103/255.0,
                       alpha: 1)

let NJColor3 = UIColor(red:125/255.0,
                       green: 24/255.0,
                       blue: 254/255.0,
                       alpha: 1)

let NJColor4 = UIColor(red:136/255.0,
                       green: 254/255.0,
                       blue: 255/255.0,
                       alpha: 1)


struct noniJuiceView: View {
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
                    }.sheet(isPresented: $showSettings) {
                        SettingsView()
                    }
                
                Spacer()
            }
            .padding(.bottom, 10.0)
            
            
            ZStack{

                VStack{
                ScrollView(.vertical){
                    VStack{
                            HStack(spacing: 30){
                                Image("Carrie2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:390, height: 250, alignment: .center)
                                    .background(Color(CNColor1))
                                    .clipped()
                            }.padding(.bottom, 30.0)
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 5){
                                Button(action: {
                                    
                                }) {
                                    ZStack{
                                        Image("Carrie3")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width:230, height: 200, alignment: .center)
                                                .background(Color("Pink"))
                                                .clipped()
                                                .padding(.leading, -4.0)
                                                .padding(.trailing, 7.0)
                                                .cornerRadius(20)
                                                .overlay(Rectangle().cornerRadius(20).foregroundColor(.black).opacity(0.25))
                                            
                                            
                                            Text("Journalist")
                                                .font(.title3)
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.white)
                                                        .multilineTextAlignment(.center)
                                                        .padding(.bottom, -70.0)
                                                        .padding(.leading, 5.0)
                                    }
                                }
                                
                                
                                Button(action: {
                                    
                                }) {
                                    ZStack{
                                    
                                    Image("The-Truth")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width:230, height: 200, alignment: .center)
                                        .background(Color("Pink"))
                                        .clipped()
                                        .padding(.leading, -4.0)
                                        .padding(.trailing, 7.0)
                                        .cornerRadius(20)
                                        .overlay(Rectangle().cornerRadius(20).foregroundColor(.black).opacity(0.25))

                                        
                                                Text("Media Personality")
                                            .font(.title3)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .padding(.bottom, -70.0)
                                                    .padding(.leading, 5.0)
                                    }
                                }
                                
                                Button(action: {
                                    
                                }) {
                                    ZStack{
                                    Image("CarrieHost")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width:230, height: 200, alignment: .center)
                                            .background(Color("Pink"))
                                            .clipped()
                                            .padding(.leading, -4.0)
                                            .padding(.trailing, 7.0)
                                            .cornerRadius(20)
                                            .overlay(Rectangle().cornerRadius(20).foregroundColor(.black).opacity(0.25))
                                        
//                                        Image(systemName: "play.tv")
//                                            .imageScale(.large)
//                                            .padding(.bottom, 70.0)
//                                            .padding(.leading, 10.0)
//                                                .font(Font.system(size:30, weight: .heavy))
//                                            .foregroundColor(Color.black)
                                                
                                                
                                                Text("Host")
                                                    .font(.title3)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .padding(.bottom, -70.0)
                                                    .padding(.leading, 5.0)
                                    }
                                }
                                
                                Button(action: {
                                    
                                }) {
                                    ZStack{
                                    Image("RadioBabe")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width:230, height: 200, alignment: .center)
                                            .background(Color("Pink"))
                                            .clipped()
                                            .padding(.leading, -4.0)
                                            .padding(.trailing, 7.0)
                                            .cornerRadius(20)
                                            .overlay(Rectangle().cornerRadius(20).foregroundColor(.black).opacity(0.25))
//
//                                    Image(systemName: "mic.fill")
//                                            .imageScale(.large)
//                                            .padding(.bottom, 70.0)
//                                            .padding(.leading, 10.0)
//                                                .font(Font.system(size:30, weight: .heavy))
//                                            .foregroundColor(Color.black)
                                            
                                            
                                            Text("Radio Personality")
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                                .padding(.bottom, -70.0)
                                                .padding(.leading, 5.0)
                                    }
                                }
                                
                                
                            }.padding(.leading, 20.0)
                        }
    
                    }
                    .padding(.top, 5.0)
                    
                    feed2()
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

struct feed2: View {
    var body: some View {
    

        let url = URL(string:"https://video.wixstatic.com/video/fbc0c1_b1ba0524050043a58ef9089c09a8b736/1080p/mp4/file.mp4")!
        VStack{

        
            VStack{
                HStack{
                    Text("Media Reel")
                        .font(.system(size: 21, weight: .bold))
                        .padding(.trailing, 200.0)
                        .padding(.bottom, -10.0)
                }
            }.padding(.top, 20.0)
                .padding(.trailing, 50.0)
            Divider()
                .padding(.bottom, 2.0)
                .background(Color("Pink"))
                .frame(width: 380)
                .padding(0.0)
                .shadow(color: Color("Pink"), radius: 3)
                .padding()
        
        HStack{
            VideoPlayer(player: AVPlayer(url:url), videoOverlay: {
                
            })
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                .cornerRadius(30)
        }
            VStack{
                HStack{
                    Text("Content")
                        .font(.system(size: 21, weight: .bold))
                        .padding(.trailing, 250.0)
                        .padding(.bottom, -10.0)
                }
            }.padding(.top, 20.0)
                .padding(.trailing, 50.0)
            Divider()
                .padding(.bottom, 2.0)
                .background(Color("Pink"))
                .frame(width: 380)
                .padding(0.0)
                .shadow(color: Color("Pink"), radius: 3)
                .padding()
        
//-----------------------------------------------------------------------------------------------------------
//                                   VIDEOS SECTION
//-----------------------------------------------------------------------------------------------------------
            
        ScrollView(.horizontal){
        HStack{
            VideoView(videoID: "moY_h85RZ6g")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.trailing, 5.0)
                .padding(.leading, 20.0)
            VideoView(videoID: "JQAJOlYYZ4g")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.trailing, 5.0)
                .padding(.leading, 20.0)
            VideoView(videoID: "7dAQXvUDzM8")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.trailing, 5.0)
                .padding(.leading, 20.0)
            VideoView(videoID: "Zw57CgDOU1o")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.trailing, 5.0)
                .padding(.leading, 20.0)
        }
        .padding(.bottom)
        }
            ScrollView(.horizontal){
                HStack{
                VideoView(videoID: "kOOfHxZcI6g")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.trailing, 5.0)
                    .padding(.leading, 20.0)
                VideoView(videoID: "ypKotCCZkc4")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.trailing, 5.0)
                    .padding(.leading, 20.0)
                VideoView(videoID: "PCV3rdirymU")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.trailing, 5.0)
                    .padding(.leading, 20.0)
                VideoView(videoID: "zOXhBVOlnPw")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.trailing, 5.0)
                    .padding(.leading, 20.0)
               
                }
            }
            
        }
        
        VStack{
            HStack{
                Text("Images")
                    .font(.system(size: 21, weight: .bold))
                    .padding(.trailing, 250.0)
                    .padding(.bottom, -10.0)
            }
        }.padding(.top, 20.0)
            .padding(.trailing, 50.0)
        Divider()
            .padding(.bottom, 2.0)
            .background(Color("Pink"))
            .frame(width: 380)
            .padding(0.0)
            .shadow(color: Color("Pink"), radius: 3)
            .padding()
    
        
        ScrollView(.horizontal){
            
           
            HStack{
                Group {
                Image("Wade")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                    
                    Image("Hudson")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.trailing, 20.0)
                        .padding(.leading, 10.0)
                        .frame(width:320, height: 450, alignment: .center)
                        .background(Color.purple)
                        .clipped()
                        .cornerRadius(12)
                
                Image("Carrie9")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("BrandonJ")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                    
                
                Image("Carrie11")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                    
                
                Image("Carrie13")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                    
                    Image("Jones")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.trailing, 20.0)
                        .padding(.leading, 10.0)
                        .frame(width:320, height: 450, alignment: .center)
                        .background(Color.purple)
                        .clipped()
                        .cornerRadius(12)
                    
                    
            }
                
            Group{
                
                Image("Carrie26")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("Carrie8")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("Carrie17")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                    
                
                Image("Carrie20")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("Lobel")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("Carrie12")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("Iggy")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("Bango")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                
                Image("Carrie15")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 20.0)
                    .padding(.leading, 10.0)
                    .frame(width:320, height: 450, alignment: .center)
                    .background(Color.purple)
                    .clipped()
                    .cornerRadius(12)
                }
                

            }.padding(.horizontal, 35.0)
            .padding(.bottom, 20.0)
            
        }
    
        
        
        VStack{
            HStack{
                Text("Contact Me")
                    .font(.system(size: 21, weight: .bold))
                    .padding(.trailing, 200.0)
                    .padding(.bottom, -10.0)
            }
        }.padding(.top, 20.0)
            .padding(.trailing, 50.0)
        Divider()
            .padding(.bottom, 2.0)
            .background(Color("Pink"))
            .frame(width: 380)
            .padding(0.0)
            .shadow(color: Color("Pink"), radius: 3)
            .padding()
    
        
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




struct noniJuiceView_Previews: PreviewProvider {
    static var previews: some View {
        noniJuiceView()
            .preferredColorScheme(.dark)
        
    }
}

