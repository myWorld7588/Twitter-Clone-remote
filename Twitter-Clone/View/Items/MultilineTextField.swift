//
//  MultilineTextField.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/1/23.
//

import SwiftUI

struct MultilineTextfield: UIViewRepresentable {
    func makeCoordinator() -> MultilineTextfield.Coordinator {
        return MultilineTextfield.Coordinator(parent1: self)
    }

    @Binding var text: String

    
    
    func makeUIView(context: Context) -> some UITextView {
        let text = UITextView()
        text.isEditable = true
        text.text = "Type Something"
        text.isUserInteractionEnabled = true
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        var parent: MultilineTextfield
        init(parent1: MultilineTextfield) {
            parent = parent1
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }
}
