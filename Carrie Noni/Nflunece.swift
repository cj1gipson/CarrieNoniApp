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
                        
                        //---------------- Setting button ------------------------------

                        Button(action:{
                            print("Settings pressed")

                            showSettings.toggle()
                        }){
                            Image("Settings")
                                .imageScale(.large)
                                .font(Font.system(size:45, weight: .heavy))
                                .foregroundColor(Color("Faded-Blue"))
                                .padding(.leading, 20.0)
                        }.sheet(isPresented: $showSettings) {
                            SheetView()
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
struct SheetView: View {
    @Environment(\.dismiss) var dismiss

       var body: some View {
           
           List{
               ForEach(settingList) { list in
                   /*@START_MENU_TOKEN@*/Text(list.label)/*@END_MENU_TOKEN@*/
               }
           }
           

           RoundedRectangle(cornerRadius: 25.0)
               .fill(
                   RadialGradient(gradient: gradient, center: .topLeading, startRadius: 5, endRadius: 250)
               )
               .overlay(Color("Dark-Blue")).opacity(0.6)
               .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           
           
           
           Button("Dismiss") {
               dismiss()
           }
           .font(.title)
       }
}

struct SettingLabel: Identifiable{
    let id = UUID()
    var label: String
    var description: String
}

var settingList = [

    SettingLabel(label: "Privacy", description: """
                 Privacy Policy for Carrie Noni App,
                 
                 Effective Date: 6/2/23

                 Thank you for using the Carrie Noni App (referred to as "the App"). This Privacy Policy outlines how we collect, use, disclose, and safeguard your personal information when you access or use our App. Please read this Privacy Policy carefully to understand our practices regarding your personal information.

                 Information We Collect
                 1.1 Personal Information
                 We may collect personal information that you voluntarily provide to us when using the App. This may include:

                 Contact information such as your name, email address, and phone number.
                 Profile information such as your username, profile picture, and any other information you choose to provide.
                 Payment information necessary for processing any purchases or transactions made within the App.
                 Communications and interactions you have with us or other users through the App, including messages and chat history.
                 Information you provide when participating in surveys, contests, or promotions conducted by us.
                 1.2 Usage and Device Information
                 We may also automatically collect certain information about your usage of the App and the device you use to access it. This may include:

                 Device information such as your device type, operating system, and unique device identifiers.
                 Log data, including IP addresses, browser type, pages visited, and access times.
                 Usage data, such as the features you use, the actions you take, and the frequency and duration of your activities within the App.
                 Location information if you grant us permission to collect it.
                 Use of Information
                 We may use the collected information for the following purposes:

                 To provide and improve the App's functionality and user experience.
                 To process your transactions and fulfill your requests for products or services.
                 To communicate with you, respond to your inquiries, and provide customer support.
                 To personalize and customize your experience within the App.
                 To send you promotional materials, updates, and other relevant information, with your consent where required by applicable laws.
                 To monitor and analyze trends, usage, and activities in connection with the App.
                 To detect, prevent, and address technical issues, fraud, or other illegal activities.
                 To comply with applicable laws, regulations, or legal processes.
                 Disclosure of Information
                 We may disclose your personal information in the following circumstances:

                 To third-party service providers who assist us in operating, maintaining, and enhancing the App.
                 To comply with legal obligations, such as responding to a court order or other lawful requests for information.
                 To protect our rights, property, or safety, as well as the rights, property, or safety of our users or others.
                 With your consent or at your direction.
                 Data Security
                 We take appropriate technical and organizational measures to protect the security of your personal information. However, please note that no method of transmission over the internet or method of electronic storage is 100% secure.

                 Your Choices
                 You can control and manage your personal information through the settings within the App. You may also choose to opt-out of receiving promotional communications from us.

                 Children's Privacy
                 The App is not intended for individuals under the age of [insert minimum age]. We do not knowingly collect or solicit personal information from children. If you believe that we may have collected personal information from a child without appropriate consent, please contact us.

                 Changes to This Privacy Policy
                 We reserve the right to modify this Privacy Policy at any time. Any changes will be effective immediately upon posting the updated Privacy Policy within the App. We encourage you to review this Privacy Policy periodically.

                 Contact Us
                 If you have any questions or concerns about this Privacy Policy or our privacy practices, please contact us at [insert contact details].

                 By using the Carrie Noni App, you signify your acceptance of this Privacy Policy. If you do not




"""),
    
    SettingLabel(label: "Terms & Conditions", description: """
        
        Terms and Conditions for Carrie Noni App

        Effective Date: 6/2/23

        Please read these Terms and Conditions ("Terms") carefully before using the Carrie Noni App (referred to as "the App"). These Terms outline the rules and regulations for the use of the App. By accessing or using the App, you agree to be bound by these Terms. If you do not agree with any part of these Terms, you may not use the App.

        Applicability and Acceptance
        1.1 Applicability
        These Terms apply to all users of the Carrie Noni App, including but not limited to individuals, entities, and organizations.

        1.2 Acceptance
        By using the App, you represent and warrant that you have the legal capacity to enter into these Terms. If you are using the App on behalf of an entity or organization, you represent and warrant that you have the authority to bind such entity or organization to these Terms.

        Use of the App
        2.1 License
        Subject to your compliance with these Terms, we grant you a limited, non-exclusive, non-transferable, and revocable license to use the App for personal, non-commercial purposes.

        2.2 Prohibited Activities
        When using the App, you agree not to:

        Violate any applicable laws, regulations, or third-party rights.
        Use the App in any manner that may interfere with its normal operation or impair the experience of other users.
        Engage in any unauthorized access, tampering, or hacking.
        Collect or store personal information of other users without their consent.
        Transmit any viruses, malware, or harmful code.
        Use the App for any illegal, fraudulent, or unauthorized purposes.
        Intellectual Property
        3.1 Ownership
        The App and all its contents, including but not limited to text, graphics, logos, images, software, and other materials, are owned by or licensed to us and are protected by intellectual property laws.

        3.2 Restrictions
        Except as expressly permitted by these Terms, you may not reproduce, modify, distribute, transmit, display, perform, or create derivative works of any content from the App without our prior written consent.

        Disclaimer of Warranties
        4.1 No Warranty
        The App is provided on an "as is" and "as available" basis, without any warranties or conditions, expressed or implied. We do not warrant that the App will be uninterrupted, error-free, or secure.

        4.2 Use at Your Own Risk
        You acknowledge and agree that your use of the App is at your own risk, and we shall not be responsible for any damages, losses, or liabilities arising from or related to your use of the App.

        Limitation of Liability
        To the maximum extent permitted by applicable law, we shall not be liable for any indirect, incidental, consequential, special, or punitive damages, including but not limited to damages for loss of profits, data, or other intangible losses, arising out of or in connection with your use of the App.

        Indemnification
        You agree to indemnify, defend, and hold us harmless from and against any claims, liabilities, damages, losses, and expenses (including legal fees) arising out of or in connection with your use of the App, your violation of these Terms, or your violation of any rights of any third party.

        Changes to the Terms
        We reserve the right to modify or replace these Terms at any time. Any changes will be effective immediately upon posting the updated Terms within the App. Your continued use of the App after the posting of any changes constitutes your acceptance of such changes.

        Governing Law and Jurisdiction
        These Terms shall be governed by and construed in accordance with the laws of [Jurisdiction]. Any dispute

""")
    
]

struct mainFeed: View {
    var body: some View {
        ZStack{
            
        VStack{
            ZStack{
                VStack{
                ScrollView(.vertical){
                    VStack{
                        ScrollView(.horizontal){
                            HStack(spacing: 3){
                                
                                VideoView(videoID: "xtV00tteIN4")
                                    .frame(minWidth: 10, idealWidth: 350, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 250, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(12)
                                    .padding(.horizontal, 35.0)
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
                            .font(.system(size: 21, weight: .bold))

                            Image(systemName: "star.fill")
                                .imageScale(.large)
                                .font(Font.system(size:15, weight: .heavy))
                                .foregroundColor(Color("Color-2"))
                                .padding(.trailing, 215.0)
                                .shadow(color: Color("Color-2"), radius: 2.5)

                        }.padding(.bottom, 5.0)
                        .padding(.top, 5.0)
                            
                        Divider()
                            .padding(.bottom, 2.0)
                            .background(Color("Pink"))
                            .frame(width: 380)
                            .padding(.bottom, 20.0)
                            .shadow(color: Color("Pink"), radius: 3)
                        
                        Button(action: {
                            guard let pilot = URL(string: "https://www.youtube.com/watch?v=yyFAicc_Q5I"),
                                  UIApplication.shared.canOpenURL(pilot)
                            else{
                                return
                            }
                            UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                        }) {
                        Image("WaveInt")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:390, height: 250, alignment: .center)
                            .background(Color.purple)
                            .clipped()
                            .cornerRadius(12)
                            .padding(.bottom, 20.0)
                    }.padding(.top, 7.0)
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
                        
                        Text("N'Fluence Countdown Shows")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        ScrollView(.horizontal){
                        HStack{

                            Button(action: {
                                guard let winter = URL(string: "https://youtu.be/HSoHHFgFj9Y"),
                                      UIApplication.shared.canOpenURL(winter)
                                else{
                                    return
                                }
                                UIApplication.shared.open(winter,options: [:], completionHandler: nil)
                            }) {
                            Image("WinterNfluence")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                .overlay(ImageOverlay5(), alignment: .bottomTrailing)
                                
                            }
                            .padding(.leading)

                            Button(action: {
                                guard let fall = URL(string: "https://www.youtube.com/watch?v=_UCq2FUYpHI"),
                                      UIApplication.shared.canOpenURL(fall)
                                else{
                                    return
                                }
                                UIApplication.shared.open(fall,options: [:], completionHandler: nil)
                            }) {
                            Image("FallNfluence")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                .overlay(ImageOverlay6(), alignment: .bottomTrailing)
                            }
                            
                            
                            Button(action: {
                                guard let Summer = URL(string: "https://www.youtube.com/watch?v=_OtitJzTRI4"),
                                      UIApplication.shared.canOpenURL(Summer)
                                else{
                                    return
                                }
                                UIApplication.shared.open(Summer,options: [:], completionHandler: nil)
                            }) {
                            Image("SummerNfluence")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                .overlay(ImageOverlay7(), alignment: .bottomTrailing)
                            }
                            
                            Button(action: {
                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=8pW0H1_F8Ls"),
                                      UIApplication.shared.canOpenURL(pilot)
                                else{
                                    return
                                }
                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)

                            }) {
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
                            
                            
                        }
                        
                        Text("N'Fluence Interviews")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            .padding(.vertical, 10.0)
                    
                        
                        
                        ScrollView(.horizontal){
                        HStack{
                            Button(action: {
                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=MSYZMXFcRgA"),
                                      UIApplication.shared.canOpenURL(pilot)
                                else{
                                    return
                                }
                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)

                            }) {
                            Image("LeeksInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                                
                            }
                            .padding(.leading)
                            
                            Button(action: {
                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=S33Xc_ds6ws"),
                                      UIApplication.shared.canOpenURL(pilot)
                                else{
                                    return
                                }
                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                            }) {
                            Image("EliInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                            
                            }
                            
                            Button(action: {
                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=-q1SYdB3MwU"),
                                      UIApplication.shared.canOpenURL(pilot)
                                else{
                                    return
                                }
                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                            }) {
                            Image("ErnieInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                            }
                            
                            Button(action: {
                                guard let pilot = URL(string: "https://www.youtube.com/watch?v=yyFAicc_Q5I"),
                                      UIApplication.shared.canOpenURL(pilot)
                                else{
                                    return
                                }
                                UIApplication.shared.open(pilot,options: [:], completionHandler: nil)
                            }) {
                            Image("WaveInt")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:390, height: 250, alignment: .center)
                                .background(Color.purple)
                                .clipped()
                                .cornerRadius(12)
                            }
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
                                .font(.system(size: 21, weight: .bold))
                            
                            
                            
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
