//
//  Home.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 12/31/22.
//

import SwiftUI

struct Home: View {
    @State var selectedIndex = 0
    
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    
                    // MARK: - Feed
                    Feed()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem {
                            if (selectedIndex == 0) {
                                Image("Home")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }
                            else {
                                Image("Home")
                            }
                        }
                        .tag(0)
                    
                    // MARK: - Search
                    SearchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem {
                            if (selectedIndex != 1) {
                                Image("Search")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }
                            else {
                                Image("Search")
                            }
                        }
                        .tag(1)
                    
                    // MARK: - Notifications
                    NotificationsView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem {
                            if (selectedIndex != 2) {
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }
                            else {
                                Image("Notifications")
                            }
                        }
                        .tag(2)
                    
                    // MARK: - Messages
                    MessagesView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem {
                            if (selectedIndex != 3) {
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }
                            else {
                                Image("Messages")
                            }
                        }
                        .tag(3)
                }
                
                // MARK: - Tweet Button
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            // Action
                        }, label: {
                            Image("Tweet").renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                    }
                    .padding()
                } //: VSTACK
                .padding(.bottom, 60)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
