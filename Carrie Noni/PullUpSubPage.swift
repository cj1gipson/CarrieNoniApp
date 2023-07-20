//
//  PullUpSubPage.swift
//  Carrie Noni
//
//  Created by Corey Gipson on 5/31/23.
//

import SwiftUI

struct PullUpSubPage: View {
    @Environment(\.dismiss) var dismiss
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
                            .padding(.leading, 45.0)
                            .padding(.top)
                            .font(Font.system(size:45, weight: .heavy))
                            .foregroundColor(Color("Pink"))
                            .shadow(color: Color("Pink"), radius: 3)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.bottom, 10.0)
                    
                //-------------------------- Feed ------------------------------
                    ScrollView(){
                    mainFeedPullUpSub()
                        .preferredColorScheme(.dark)
                    }
                }
        }
    }
}

struct mainFeedPullUpSub: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        Button(action: {
            
        }) {
            ZStack{
                VStack{
                    Image("Pull-Up")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:355, height: 355, alignment: .center)
                        .clipped()
                        .cornerRadius(20)
                }.padding(.trailing, 10.0)
                
            }.padding(.bottom, 5.0)
        }
        
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        
        Button("Dismiss") {
            dismiss()
        }
        .padding(.top, 20.0)
        .font(.title)
        .foregroundColor(Color("Pink"))
        .shadow(color: Color("Pink"), radius: 3)
        
    }
}

struct mainFeedNfluenceSub: View {
    
    var body: some View {
        
        Button(action: {
            
        }) {
            ZStack{
                VStack{
                    Image("Whats-Poppin")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:355, height: 355, alignment: .center)
                        .clipped()
                        .cornerRadius(20)
                }.padding(.trailing, 10.0)
                
            }.padding(.bottom, 5.0)
        }
        
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }
        HStack{
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Whats-Poppin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }.padding(.trailing, 10.0)
                    
                }.padding(.bottom, 5.0)
            }
            
            Button(action: {
                
            }) {
                ZStack{
                    VStack{
                        Image("Carrie6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:175, height: 175, alignment: .center)
                            .clipped()
                            .cornerRadius(20)
                    }
                    
                }.padding(.bottom, 5.0)
            }
        }

        
    }
}

struct tabBarViewsub: View {
    
    @State var selectedIndex = 1
    let icons = ["Juice", "home4", "Nfluence-1"]
    
    var body: some View {
        
        VStack{
            
            ZStack{
                
                switch selectedIndex{
                case 0:
                    noniJuiceView()
                case 1:
                    ContentView()
                default:
                    NfluenceView()
                }
            }
            //.padding(.top, -150.0)
                //.background(Color(CNColor1))
            HStack(spacing: -9.0){
                ForEach(0..<3, id: \.self){number in
                    Spacer()
                    Button(action:{self.selectedIndex = number}, label: {
                        
                    if(selectedIndex == number){
                        Image(icons[number])
                            .font(.system(size: 55, weight: .regular, design: .default)).padding().padding(.horizontal, -6.0)
                            .foregroundColor(selectedIndex == number ? Color("Pink") : Color("Dark-Blue-1"))
                            .shadow(color: Color("Pink"), radius: 3)
                    } else{
                        Image(icons[number])
                            .font(.system(size: 55, weight: .regular, design: .default)).padding().padding(.horizontal, -6.0)
                            .foregroundColor(selectedIndex == number ? Color("Pink") : Color("Dark-Blue-1"))
                    }
                            
                    })
                    Spacer()
                }
               
            }.background(Color("Dark-Blue"))
            .edgesIgnoringSafeArea(.all)
            
        }
    }
   
}


struct PullUpSubPage_Previews: PreviewProvider {
    static var previews: some View {
        PullUpSubPage()
            .preferredColorScheme(.dark)
    }
}
