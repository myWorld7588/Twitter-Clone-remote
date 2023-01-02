//
//  Feed.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 12/31/22.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 18) {
                
                TweetCellView(tweet: "hey Tim, are those regular glasses?", tweetImage: "post")
                Divider()
                
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText)
                        Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        })
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
