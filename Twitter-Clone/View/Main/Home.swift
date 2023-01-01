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
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
