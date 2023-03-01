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


struct LoginView: View {
    
    @State var index = 0

    var body: some View {
        GeometryReader{_ in
        
            VStack{
                Spacer()
                Image("cn")
                    .imageScale(.large)
                    .padding(.trailing, 15.0)
                    .font(Font.system(size:55, weight: .heavy))
                    .foregroundColor(Color(CNColor1))
               
                ZStack{
                    
                    SignUp(index: self.$index)
                        .zIndex(Double(self.index))
                    
                    Login(index: self.$index)
                }
                
                HStack(spacing: 15 ){
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 1)
                    
                    Text("OR")
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 1)
                }
                .padding(.horizontal, 20)
                .padding(.top, 50)
                
                HStack(spacing:25){
                    Button(action: {
                        
                    }) {
                        
                        Image("apple")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("fb")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("twitter")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                    }
                }
                .padding(.top, 30.0)
                Spacer()

            }
            
        }
        
    }
}

struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path{
    return Path{path in
    
        path.move(to: CGPoint(x: rect.width, y: 100))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: 0))
    
    }
    }
}

struct CShape1 : Shape {
    
    func path(in rect: CGRect) -> Path{
    return Path{path in
    
        path.move(to: CGPoint(x: 0, y: 100))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
    
    }
    }
}

struct Login : View {
    //@State private var name: String = "Pimpin"
    @State var email = ""
    @State var pass = ""
    @State var Repass = ""
    @Binding var index : Int
    
    var body: some View{
        ZStack(alignment: .bottom ){
            
            VStack{
                HStack{
                    VStack(spacing: 10){
                        Text("Login")
                            .foregroundColor( self.index == 0 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top,10)
                            .padding(.trailing, 240.0)
                        Capsule()
                            .fill(self.index == 0 ? Color(CNColor2) : Color.clear)
                            .frame(width: 100, height: 5)
                            .padding(.top,78)
                            .padding(.trailing, 230.0)
                    }

                }
                
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.white)
                        TextField("Email Address", text: self.$email)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.white)
                        SecureField("Password", text: self.$pass)
                    }
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack{
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        Text("Forget Password?")
                            .foregroundColor(.white.opacity(0.6))
                    }
                }
                .padding(.horizontal)
                .padding(.top,30)

               
            }
            .padding()
            .padding(.bottom,65)
            .background(Color(CNColor1))
            .clipShape(CShape())
            .contentShape(CShape())
            .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: -5)
            .onTapGesture {
                    self.index = 0
                }
            }
            .cornerRadius(35)
        .padding(.horizontal, 20)
        .padding(.top)
           
            
        Button(action: {
            
        }) {
            Text("LOGIN")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.vertical)
                .padding(.horizontal,50)
                .background(Color(CNColor2))
                .clipShape(Capsule())
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                
        }
        .offset(y: 25)
        .opacity(self.index == 0 ? 1 : 0)
        .padding(.top, 320.0)
            
           
        }
    }

func present(
    _ viewControllerToPresent: UIViewController,
    animated flag: Bool,
    completion: (() -> Void)? = nil
){ print("Buttonnnn");}

func alertB(){
    // Create a new alert
    let dialogMessage = UIAlertController(title: "Attention", message: "I am an alert message you cannot dissmiss.", preferredStyle: .alert)

    // Present alert to user
    present(dialogMessage, animated: true, completion: nil);
}

struct SignUp : View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var UserName = ""
    @State var pass = ""
    @Binding var index : Int

    
    
    var body: some View{
        ZStack(alignment: .bottom ){
            
            VStack{
                HStack{
                    Spacer(minLength: 0)
                    VStack(spacing: 10){
                        
                        Text("SignUp")
                            .foregroundColor(self.index == 1 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? Color(CNColor3) : Color.clear)
                            .frame(width: 100, height: 5)
                    }
                    
                }.padding(.top,20)
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.white)
                        TextField("First Name", text: self.$firstName)
                        
                        HStack(spacing:15){
                            TextField("Last Name", text: self.$lastName)
                        }
                        
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                    
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.white)
                        TextField("Email Address", text: self.$email)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.white)
                        TextField("UserName", text: self.$UserName)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.white)
                        SecureField("Password", text: self.$pass)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
               
            }
            .padding(.all, 19.0)
            .padding(.bottom,65)
            .background(Color(CNColor2))
            .clipShape(CShape1())
            .contentShape(CShape1())
            .shadow(color: Color.white.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
                
                    self.index = 1
                }
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
           
            
        Button(action: {print("Wow so simple!" + UserName)}) {
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal,50)
                    .background(Color(CNColor1))
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5);
                
            }
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        ///Trying to find out how to make a change on the button click
        ///simple console print for now
        //////////////////////////////////////////////////////////////////////////////////////////////////////
            .offset(y: 25)
            .opacity(self.index == 1 ? 1 : 0)
            .padding(.top, 320.0)
        
        
        }
    
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
        
    }
}

/*struct Login : View {
    
    @State var email = ""
    @State var pass = ""
    @Binding var index : Int
    
    var body: some View{
        ZStack(alignment: .bottom ){
           
            VStack{
                
                HStack{
                    VStack(spacing: 10){
                        Text("Login")
                            .foregroundColor( self.index == 0 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        Capsule()
                            .fill(self.index == 0 ? Color(CNColor2) : Color.clear)
                            .frame(width: 100, height: 5)
                  
                    }
                }.padding(.top,30)
                .padding(.trailing, 230.0)
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.white)
                        TextField("Email Address", text: self.$email)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    HStack(spacing:15){
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.white)
                        SecureField("Password", text: self.$pass)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack{
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        Text("Forget Password?")
                            .foregroundColor(.white.opacity(0.6))
                    }
                }
                .padding(.horizontal)
                .padding(.top,30)
               
            }
            .padding(.bottom,65)
            .background(Color(CNColor1))
            .clipShape(CShape())
            .contentShape(CShape())
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
          
            
           
            
            Button(action: {
                
            }) {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal,50)
                    .background(Color(CNColor2))
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .offset(y: 25)
            .opacity(self.index == 0 ? 1 : 0)
             
        }

    }
    
}*/

