//
//  Home.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 12/31/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    
                    // MARK: - Feed
                    Feed()
                        .tabItem {
                            Image("Home")
                        }
                    
                    // MARK: - Search
                    SearchView()
                        .tabItem {
                            Image("Search")
                        }
                    
                    // MARK: - Notifications
                    NotificationsView()
                        .tabItem {
                            Image("Notifications")
                        }
                    
                    // MARK: - Messages
                    MessagesView()
                        .tabItem {
                            Image("Messages")
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
