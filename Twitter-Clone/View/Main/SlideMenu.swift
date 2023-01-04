//
//  SlideMenu.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/2/23.
//

import SwiftUI

struct SlideMenu: View {
    // toggle chevron
    @State var show = false
    
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack(spacing: 0, content: {
                
                VStack(alignment: .leading, content: {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top, spacing: 12, content: {
                        
                        VStack(alignment: .leading, spacing: 12, content: {
                            Text("Cem")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text("@cem_salta")
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 20, content: {
                                FollowView(count: 0, title: "Following")
                                FollowView(count: 16, title: "Followers")
                            })
                            .padding(.top, 10)
                            
                            Divider()
                                .padding(.top, 10)
                            
                        }) //: VSTACK
                        
                        Spacer(minLength: 0)
                        
                        // chevron button
                        Button(action: {
                            withAnimation{
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color.red)
                        })
                    }) //: HSTACK
                    
                    VStack(alignment: .leading, content: {
                        
                        ForEach(menuButtons, id:\.self) { item in
                            MenuButton(title: item)
                        }
                        
                        Divider()
                            .padding(.top)
                        Button(action: {
                            
                        }, label: {
                            MenuButton(title: "Twitter Ads")
                        })
                        
                        Divider()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Settings and privary")
                                .foregroundColor(.black)
                        })
                        
                        .padding(.top, 20)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Help Center")
                                .foregroundColor(.black)
                        })
                        
                        
                        Spacer(minLength: 0)
                        Divider()
                            .padding(.bottom)
                        
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Image("help")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(Color("bg"))
                                
                            })
                            
                            Spacer(minLength: 0)
                            
                            Image("barcode")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(Color("bg"))
                        }
                        
                    }) //: VSTACK
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading, content: {
                        Button(action: {
                            
                        }, label: {
                            Text("Create a new account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Add an existing account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Spacer(minLength: 0)
                        
                    })
                    
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 0)
                    
        
                }) //: VSTACK
                
                .padding(.horizontal, 20)
                .padding(.top, edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
            }) //: HSTACK
        } //: VSTACK
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
