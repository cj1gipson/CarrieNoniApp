//
//  NoniJuice.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 1/14/22.
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
    var body: some View {
        
        
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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
                Color.white
                VStack{
                ScrollView(.vertical){
                    VStack{
                            HStack(spacing: 3){
                                Image("Carrie2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:390, height: 250, alignment: .center)
                                    .background(Color(CNColor1))
                                    .clipped()
                            }.padding(.bottom, -2.0)
                        HStack(spacing: 3){
                            Image("")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:192, height: 195, alignment: .center)
                                .background(Color(NJColor1))
                                .clipped()
                                .padding(.leading, -4.0)
                                .padding(.trailing, 7.0)
                            
                            Image("")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:192, height: 195, alignment: .center)
                                .background(Color.black)
                                .clipped()
                                .padding(.leading, -4.0)
                                .padding(.trailing, -4.0)
                        }.padding(.bottom, -2.0)
                        
                        HStack(spacing: 3){
                            Image("")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:192, height: 195, alignment: .center)
                                .background(Color.black)
                                .clipped()
                                .padding(.leading, -4.0)
                                .padding(.trailing, 7.0)
                            
                            Image("")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:192, height: 195, alignment: .center)
                                .background(Color(NJColor1))
                                .clipped()
                                .padding(.leading, -4.0)
                                .padding(.trailing, -4.0)
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
        HStack{
            Image("NoniLogo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:200, height: 200, alignment: .center)
                
                .clipped()
        }.padding(.vertical, 10.0)
        
        HStack{
            Image("Carrie7")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:350, height: 500, alignment: .center)
                .background(Color(CNColor1))
                .clipped()
                
        }
        Spacer()
        
        HStack{
            Image("Title9")
                .resizable()
                .frame(width:250, height: 35, alignment: .center)
                .background(Color(CNColor3))
                .clipped()
        }
        .padding(.vertical)
        
        HStack{
            VideoPlayer(player: AVPlayer(url:url), videoOverlay: {
                Image("mediaReel")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 358, height: 300)
                    .scaledToFit()
                    .padding()
                
            })
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                .cornerRadius(30)
        }
            HStack{
                Image("Title10")
                    .resizable()
                    .frame(width:250, height: 30, alignment: .center)
                    .background(Color(CNColor3))
                    .clipped()
            }
            .padding(.vertical)
//-----------------------------------------------------------------------------------------------------------
//                                   VIDEOS SECTION
//-----------------------------------------------------------------------------------------------------------
            
        ScrollView(.horizontal){
        HStack{
            VideoView(videoID: "moY_h85RZ6g")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 20.0)
            VideoView(videoID: "JQAJOlYYZ4g")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 20.0)
            VideoView(videoID: "7dAQXvUDzM8")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 20.0)
            VideoView(videoID: "Zw57CgDOU1o")
                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                .padding(.horizontal, 20.0)
        }
        .padding(.bottom)
        }
            ScrollView(.horizontal){
                HStack{
                VideoView(videoID: "kOOfHxZcI6g")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.horizontal, 20.0)
                VideoView(videoID: "ypKotCCZkc4")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.horizontal, 20.0)
                VideoView(videoID: "PCV3rdirymU")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.horizontal, 20.0)
                VideoView(videoID: "zOXhBVOlnPw")
                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12)
                    .padding(.horizontal, 20.0)
               
                }
            }
            
        }
        
        HStack{
            Image("Title11")
                .resizable()
                .frame(width:220, height: 50, alignment: .center)
                .background(Color(CNColor3))
                .clipped()
        }
        .padding(.vertical)
        
        ScrollView(.horizontal){
            HStack{
                Image("Carrie9")
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
                    
                Image("Carrie19")
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
                
                Image("Carrie12")
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
                

            }.padding(.horizontal, 35.0)
            .padding(.bottom, 20.0)
            
        }
    
        
        
        HStack{
            Image("Title12")
                .resizable()
                .frame(width:250, height: 38, alignment: .center)
                .background(Color(CNColor3))
                .clipped()
        }
        .padding(.vertical)
        
        HStack{
            Image("NJInsta")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180, height: 180, alignment: .center)
                .clipped()
                .cornerRadius(12)
                
            
            Image("NJBook2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180, height: 180, alignment: .center)
                .clipped()
                .cornerRadius(12)
            
        }
        
        HStack{
            Image("NJTwitter2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180, height: 180, alignment: .center)
                .clipped()
                .cornerRadius(12)
            
            Image("NJYT")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180, height: 180, alignment: .center)
                .clipped()
                .cornerRadius(12)
        }.padding(.bottom, 35.0)
        
    }
}




struct noniJuiceView_Previews: PreviewProvider {
    static var previews: some View {
        noniJuiceView()
            .preferredColorScheme(.dark)
        
    }
}

