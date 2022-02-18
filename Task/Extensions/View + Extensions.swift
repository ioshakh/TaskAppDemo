//
//  View + Extensions.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import Foundation
import UIKit

@objc extension UIView {
    
    func setupSubviews() {
        embedSubviews()
        setSubviewsConstraints()
    }
    
    func embedSubviews() {
        
    }
    
    func setSubviewsConstraints() {
        
    }
}

extension UIView {
    
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        clipsToBounds = true
        layer.cornerRadius = radius
        layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
    }
    
    
    func applyShadowOnView(_ view: UIView) {
        view.layer.cornerRadius = 6
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.7
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 5
        view.layer.borderWidth = 0.3
        view.layer.borderColor = UIColor.lightGray.cgColor
    }
}
