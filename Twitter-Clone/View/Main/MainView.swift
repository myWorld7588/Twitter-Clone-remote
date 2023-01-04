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
                        .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                        .offset(x: x)
                        .background(Color.black.opacity(x == 0 ? 0.5 : 0))
                        .ignoresSafeArea(.all, edges: .vertical)
                        .onTapGesture {
                            withAnimation {
                                x = -width
                            }
                        }
                })
                // it addes 100pixels which comes from this value to the negative width which hides the slides
                .gesture(DragGesture().onChanged({(value) in
                    withAnimation {
                        if value.translation.width > 0 {
                            if x < 0 {
                                x = -width + value.translation.width
                            }
                        }
                        // allow to push it to left side if x is not hidden
                        else {
                            if x != -width {
                                x = value.translation.width
                            }
                        }
                    }
                    // if drag x out more than half the width it automatically going to pop up and open slide
                }).onEnded({ (value) in
                    withAnimation {
                        if -x < width / 2 {
                            x = 0
                        }
                    }
                }))
                
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
