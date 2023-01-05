//
//  BlurView.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/4/23.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    // makeUIView represent will basically allow to use app views inside of SwiftUI
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
