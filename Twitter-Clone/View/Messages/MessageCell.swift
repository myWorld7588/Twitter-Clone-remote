//
//  MessageCell.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/2/23.
//

import SwiftUI

struct MessageCell: View {
    
    @State var width = UIScreen.main.bounds.width

    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            HStack {
                Image("logo")
                    .resizable()
                    .foregroundColor(.blue)
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 0, content: {
                    HStack {
                        Text("Cem ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Text("@cem_salta")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("1/1/23")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    
                    Text("You: Keep Going")
                        .foregroundColor(.gray)
                    
                    Spacer()
                })
            }
            .padding(.top, 2)
        })
        .frame(width: width, height: 84)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
