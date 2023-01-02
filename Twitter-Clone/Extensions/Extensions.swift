//
//  Extensions.swift
//  Twitter-Clone
//
//  Created by Jake Choi on 1/2/23.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
