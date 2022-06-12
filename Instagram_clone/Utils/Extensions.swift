//
//  Extensions.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 8/6/2022.
//

import UIKit
extension UIApplication{
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
