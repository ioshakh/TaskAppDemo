//
//  String + Extensions.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//



import Foundation

extension String {
    var localize: String {
        let code = GeneralPreferences.shared.language.isoCode
        let path = Bundle.main.path(forResource: code, ofType: "lproj")!
        let bundle = Bundle(path: path)!
        
        return NSLocalizedString(self, bundle: bundle, comment: "")
    }
}
