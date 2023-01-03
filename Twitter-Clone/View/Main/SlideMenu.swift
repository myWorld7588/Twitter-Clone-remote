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
                                .foregroundColor(Color("bg"))
                        })
                    }) //: HSTACK
                    
                    
                    
                    
                    
                    
                    
                }) //: VSTACK
            }) //: HSTACK
        } //: VSTACK
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
