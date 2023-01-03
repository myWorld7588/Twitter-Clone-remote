//
//  SlideMenu.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/2/23.
//

import SwiftUI

struct SlideMenu: View {
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
                        }) //: VSTACK
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
