//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/1/23.
//

import SwiftUI

struct TweetCellView: View {
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10, content: {
                    (Text("Cem ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary) + Text("@cem_selta")
                            .foregroundColor(.gray))
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)

                    }
                })
            }) //: HSTACK
            
            // Call Button
            HStack(spacing: 50, content: {
                Button(action: {
                    // action comments
                }, label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
                
                Button(action: {
                    // action Retweet
                }, label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
                
                Button(action: {
                    // action love
                }, label: {
                    Image("Show the love")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
                
                Button(action: {
                    // actino upload
                }, label: {
                    Image("upload")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                })
                .padding(.top, 4)
                
            })
            
        
            
            
            

        } //: VSTACK
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sampleText)
    }
}

var sampleText = "sdfjkalsdjflksajfklad, ds... dsfsadfsffsdfsdfdsaf, asfsadfsdfdsfsdf. asdfsadfsdfsdfasf. asdfasfasdfds.   ,asdfsdfsdfsdfsadfsadf. djflksdajflkasdjflkasdjfldsjflasjfklsjfklsjl."
