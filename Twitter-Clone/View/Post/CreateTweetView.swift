//
//  CreateTweetView.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/1/23.
//

import SwiftUI

struct CreateTweetView: View {
    @State var text = ""

    var body: some View {
        
        VStack {
            HStack {
                // MARK: - Cancel
                Button(action: {
                    // action cancel
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                // MARK: - Tweet
                Button(action: {
                    // action tweet
                }, label: {
                    Text("Tweet")
                        .padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            } //: HSTACK
            
            MultilineTextfield(text: $text)
            
        } //: VSTACK
        .padding()
    }
}

struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView()
    }
}
