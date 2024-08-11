//
//  Nflunece.swift
//  Carrie Noni
//
//  Created by Corey Gipson & DeAngelo Stewart on 1/13/22.
//

import SwiftUI
import WebKit
import AVKit
import Combine

let icons = ["hair", "Juice", "home4", "nfluence","shop"
]

struct NfluenceView: View {
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
          //---------------- Setting Button ------------------------------
                        Button(action:{
                            showSettings.toggle()
                        }){
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
                        mainFeed()
                    }
                }
        }
        
    }
    
}

struct mainFeed: View {
    var body: some View {
        ZStack{
            
        VStack{
            ZStack{
                VStack{
                ScrollView(.vertical){
//                    VStack{
//                        ScrollView(.horizontal){
//                            HStack(spacing: 3){
//                               
//                                VideoView(videoID: "M4fuh98KpzQ")
//                                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                    .cornerRadius(12)
//                                    .padding(.horizontal, 35.0)
//                            }
//                            
//                        }
//                        Text("Winter 2021 Winner Luh Leeks")
//                            .font(.body)
//                            .fontWeight(.bold)
//                    }
//                    .padding(.top, 3.0)
//                    .padding(.bottom, 11.0)

                    Spacer()
                    
                   
//-----------------------------------------------------------------------------------------------------------
//                                   FEATURED SECTION
//-----------------------------------------------------------------------------------------------------------
                    VStack{
                    HStack{
                        Text("New Vlog")
                            .font(.system(size: 21, weight: .bold))

                            Image(systemName: "star.fill")
                                .imageScale(.large)
                                .font(Font.system(size:15, weight: .heavy))
                                .foregroundColor(Color("Color-2"))
                                .padding(.trailing, 230.0)
                                .shadow(color: Color("Color-2"), radius: 2.5)

                        }.padding(.bottom, 5.0)
                        .padding(.top, 5.0)
                            
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Pink"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                            .shadow(color: Color("Pink"), radius: 3)
                        
                        VideoView(videoID: "M4fuh98KpzQ")
                            .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(12)
                            .padding(.horizontal, 35.0)
                    }
                     
                    
                        
//-----------------------------------------------------------------------------------------------------------
//                                   VIDEOS SECTION
//-----------------------------------------------------------------------------------------------------------
                    VStack{
                        HStack{
                        Text("VIDEOS")
                                .font(.system(size: 21, weight: .bold))

                            
                            
                            Image(systemName: "video.fill")
                                .imageScale(.large)
                                .font(Font.system(size:16, weight: .heavy))
                                .foregroundColor(Color("Color-2"))
                                .padding(.trailing, 250.0)
                                .shadow(color: Color("Color-2"), radius: 2.5)
                                
                        }.padding(.bottom, 5.0)
                        .padding(.top, 5.0)
                        
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Pink"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                            .shadow(color: Color("Pink"), radius: 3)
                        
                        
                        
                        ScrollView(.horizontal){
                        HStack{
                            
//                            VideoView(videoID: "M4fuh98KpzQ")
//                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .cornerRadius(12)
//                                .padding(.horizontal, 35.0)
//                            .padding(.leading)

                            
                            VideoView(videoID: "3zfRSTD8Jlg")
                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .padding(.horizontal, 16.0)
                            .padding(.leading)
                            
                            VideoView(videoID: "jFk2Q1hBHRA")
                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .padding(.horizontal, 16.0)
                            .padding(.leading)
                            
                            VideoView(videoID: "ux80NQvEraw")
                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .padding(.horizontal, 16.0)
                            .padding(.leading)
                            
                            VideoView(videoID: "p9eU_5vYTtg")
                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .padding(.horizontal, 16.0)
                            .padding(.leading)
                            
                            VideoView(videoID: "LIrTOkzrp_I")
                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .padding(.horizontal, 16.0)
                            .padding(.leading)
                            
                            VideoView(videoID: "1M4hjH4SnyA")
                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .padding(.horizontal, 16.0)
                            .padding(.leading)
                            

                            VideoView(videoID: "ng4FOHO_tCg")
                                .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .padding(.horizontal, 16.0)
                            .padding(.leading)
                                                                                                                                                                                                                                                                                    
                                
                        }
                            
                            
                        }
                        
                        
//                        ScrollView(.horizontal){
//                        HStack{
//                            Button(action: {
//                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=MSYZMXFcRgA"),
//                                      UIApplication.shared.canOpenURL(pilot)
//                                else{
//                                    return
//                                }
//                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
//
//                            }) {
//                            Image("LeeksInt")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width:390, height: 250, alignment: .center)
//                                .background(Color.purple)
//                                .clipped()
//                                .cornerRadius(12)
//                                
//                            }
//                            .padding(.leading)
//                            
//                            Button(action: {
//                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=S33Xc_ds6ws"),
//                                      UIApplication.shared.canOpenURL(pilot)
//                                else{
//                                    return
//                                }
//                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
//                            }) {
//                            Image("EliInt")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width:390, height: 250, alignment: .center)
//                                .background(Color.purple)
//                                .clipped()
//                                .cornerRadius(12)
//                            
//                            }
//                            
//                            Button(action: {
//                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=-q1SYdB3MwU"),
//                                      UIApplication.shared.canOpenURL(pilot)
//                                else{
//                                    return
//                                }
//                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
//                            }) {
//                            Image("ErnieInt")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width:390, height: 250, alignment: .center)
//                                .background(Color.purple)
//                                .clipped()
//                                .cornerRadius(12)
//                            }
//                            
//                            Button(action: {
//                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=yyFAicc_Q5I"),
//                                      UIApplication.shared.canOpenURL(pilot)
//                                else{
//                                    return
//                                }
//                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
//                            }) {
//                            Image("WaveInt")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width:390, height: 250, alignment: .center)
//                                .background(Color.purple)
//                                .clipped()
//                                .cornerRadius(12)
//                            }
//                        }
//                        }.padding(.bottom, 20.0)
//                        .padding(.top, 10.0)

                    }
                   
//-----------------------------------------------------------------------------------------------------------
//                                   WALL OF FAME SECTION
//-----------------------------------------------------------------------------------------------------------
                    VStack{
                        HStack{
                            
                        
                        Text("Keepin' It Juicy")
                                .font(.system(size: 20, weight: .bold))
                            
                            
                            
                            Image(systemName: "crown.fill")
                                .imageScale(.large)
                                .font(Font.system(size:17, weight: .heavy))
                                .foregroundColor(Color("Color-2"))
                                .padding(.trailing, 130.0)
                                .shadow(color: Color("Color-2"), radius: 2.5)
                                
                        }
                        .padding(.bottom, 5.0)
                        .padding(.top, 5.0)
                        .padding(.trailing, 50.0)
                        
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Pink"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                            .shadow(color: Color("Pink"), radius: 3)
                        
                        ScrollView(.horizontal){
                            HStack{
                                
                                @ObservedObject var viewModel = InstagramViewModel()
                                
                                List(viewModel.mediaItems) { media in
                                            if media.media_type == "IMAGE" {
                                                AsyncImage(url: URL(string: media.media_url))
                                                    .frame(height: 200)
                                                    .clipped()
                                            }
                                        }
                                        .onAppear {
                                            viewModel.fetchInstagramPhotos(accessToken: "YOUR_ACCESS_TOKEN")
                                        }

                                
                                Button(action: {
                                    guard let pilot = URL(string: "https://instagram.com/luhleeks?igshid=MzRlODBiNWFlZA=="),
                                          UIApplication.shared.canOpenURL(pilot)
                                    else{
                                        return
                                    }
                                    UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                                }) {
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
                                }
                                .padding(.leading)
                                
                                Button(action: {
                                    guard let pilot = URL(string: "https://instagram.com/elistizzy?igshid=MzRlODBiNWFlZA=="),
                                          UIApplication.shared.canOpenURL(pilot)
                                    else{
                                        return
                                    }
                                    UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                                }) {
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
                                }
                                
                                
                                Button(action: {
                                    guard let pilot = URL(string: "https://instagram.com/itserniez?igshid=MzRlODBiNWFlZA=="),
                                          UIApplication.shared.canOpenURL(pilot)
                                    else{
                                        return
                                    }
                                    UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                                }) {
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
                                    
                                }
                                
                                Button(action: {
                                    guard let pilot = URL(string: "https://instagram.com/_camwill?igshid=MzRlODBiNWFlZA=="),
                                          UIApplication.shared.canOpenURL(pilot)
                                    else{
                                        return
                                    }
                                    UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                                }) {
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
                                }
                                
                                

                            }.padding(.bottom, 20.0)
                            
                        }
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
                            .background(Color("Pink"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                            .shadow(color: Color("Pink"), radius: 3)
                        
                        HStack{
                            
                            Button(action: {
                                guard let instagram = URL(string: "https://instagram.com/the.nfluence?igshid=MzRlODBiNWFlZA=="),
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
                                guard let youtube = URL(string: "https://www.youtube.com/@nfluence381"),
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


struct InstagramMedia: Identifiable, Codable {
    let id: String
    let media_type: String
    let media_url: String
}

class InstagramViewModel: ObservableObject {
    @Published var mediaItems: [InstagramMedia] = []
    var cancellables = Set<AnyCancellable>()
    
    func fetchInstagramPhotos(accessToken: String) {
        let urlString = "https://graph.instagram.com/me/media?fields=id,media_type,media_url&access_token=\(accessToken)"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [String: [InstagramMedia]].self, decoder: JSONDecoder())
            .map { $0["data"] ?? [] }
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }, receiveValue: { [weak self] media in
                self?.mediaItems = media
            })
            .store(in: &cancellables)
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





