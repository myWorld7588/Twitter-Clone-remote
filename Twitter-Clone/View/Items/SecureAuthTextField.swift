//
//  CustomAuthTextField.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/7/23.
//

import SwiftUI

struct SecureAuthTextField: View {
    
    var placeholder: String
    @Binding var text: String
    
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading, content: {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray)
                    
                }
                
                SecureField("", text: $text)
                    .frame(height: 45)
                    .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                
            })
            
            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundColor(.gray)
                .padding(.top, -2)
        }
        .padding(.horizontal)
    }
}

