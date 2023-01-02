//
//  MessagesView.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 12/31/22.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack {
            VStack {
                ScrollView {
                    ForEach(0..<9) { _ in
                        MessageCell()
                    }
                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
