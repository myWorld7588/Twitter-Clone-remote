//
//  UserProfile.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/4/23.
//

import SwiftUI

struct UserProfile: View {
    
    @State var offset: CGFloat = 0
    @State var titleOffset: CGFloat = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                GeometryReader { proxy -> AnyView in
                    
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        
                        self.offset = minY
                    }
                    
                    return AnyView(
                        ZStack {
                            Image("banner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: minY > 0 ? 180 + minY : 180, alignment: .center)
                                .cornerRadius(0)
                            
                            BlurView()
                                .opacity(blueViewOpacity())
                            
                            VStack(spacing: 5, content: {
                                Text("Cem")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Text("150 Tweets")
                                    .foregroundColor(.white)
                                
                            })
                            .offset(y: 120)
                            .offset(y: titleOffset > 100 ? 0 : -getTitleOffset())
                            .opacity(titleOffset < 100 ? 1 : 0)
                            
                        }
                            .clipped()
                            .frame(height: minY > 0 ? 100 - minY : nil)
                            .offset(y: minY > 0 ? -minY : minY < 80 ? 0 : -minY - 80)
                    )
                }
                .frame(height: 180)
                .zIndex(1)
            }
        }
    }
    
    func blueViewOpacity() -> Double {
        let progress = -(offset + 80) / 150
        return Double(-offset > 80 ? progress : 0)
    }
    
    func getTitleOffset() -> CGFloat {
        let progress = 20 / titleOffset
        let offset = 60 * (progress > 0 && progress <= 1 ? progress : 1)
        return offset
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
