//
//  UIColor + Extensions.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//
import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(netHex: Int) {
        self.init(red: (netHex >> 16) & 0xff, green: (netHex >> 8) & 0xff, blue: netHex & 0xff)
    }
}


extension UIColor {
    struct appColor {
        static let loginButton = UIColor(netHex: 0xb3201F8)
        static let loginText = UIColor(netHex: 0xFFFFFF)
        static let textFieldImageIcon = UIColor(netHex:0xECECEC)
        static let textField = UIColor(netHex:0xF5F9FF)
    }
}
