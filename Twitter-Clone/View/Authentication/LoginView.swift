//
//  LoginView.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/7/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var passworld = ""
    @State var emailDone = false
    
    
    var body: some View {
        if !emailDone {
            VStack {
                VStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Text("Cancel")
                                    .foregroundColor(.blue)
                            })
                            
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        Image("Twitter")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing)
                            .frame(width: 35, height: 35)
                    }
                    
                    Text("To get started first enter your phone, email, or @username")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    CustomAuthTextField(placeholder: "Phone, email, or @username", text: $email)
                }
                
                Spacer(minLength: 0)
                
                VStack {
                    Button(action: {
                        self.emailDone.toggle()
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Next")
                                .foregroundColor(.white))
                    })
                    .padding(.bottom, 4)
                    
                    Text("Forget Password?")
                        .foregroundColor(.blue)
                }
            }
        }
        else {
            VStack {
                VStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Text("Cancel")
                                    .foregroundColor(.blue)
                            })
                            
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        Image("Twitter")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing)
                            .frame(width: 35, height: 35)
                    }
                    
                    Text("Enter your password")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    SecureAuthTextField(placeholder: "Password", text: $passworld)
                }
                
                Spacer(minLength: 0)
                
                VStack {
                    Button(action: {
                        self.emailDone.toggle()
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Log in")
                                .foregroundColor(.white))
                    })
                    .padding(.bottom, 4)
                    
                    Text("Forget Password?")
                        .foregroundColor(.blue)
                }
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
