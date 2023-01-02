//
//  SearchUserCell.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/2/23.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Cem")
                    .fontWeight(.heavy)
                Text("@cem_salta")
            }
            
            Spacer(minLength: 0)
            
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
