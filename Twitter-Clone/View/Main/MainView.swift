//
//  MainView.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/2/23.
//

import SwiftUI

struct MainView: View {
    
    @State var width = UIScreen.main.bounds.width - 90
    @State var x = -UIScreen.main.bounds.width + 90
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                    VStack {
                        TopBar(x: $x)
                        Home()
                    }
                    SlideMenu()
                        .offset(x: x)
                })
                
            }
            .navigationBarHidden(true)
            .navigationBarTitle("")
        }
    }
}
    
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
