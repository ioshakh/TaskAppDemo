//
//  GeneralPrefenses.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit

class GeneralPreferences {
    
    static let shared = GeneralPreferences()
    private let userDefaults: UserDefaults
    
    private init() {
        userDefaults = UserDefaults.standard
        userDefaults.register(defaults: [
            Key.kUserInterfaceStyle.rawValue: UIUserInterfaceStyle.light.rawValue,
            Key.kLanguage.rawValue: Language.uzbek.rawValue
        ])
    }
    
    var userInterfaceStyle: UIUserInterfaceStyle {
        get {
            let rawValue = userDefaults.integer(forKey: Key.kUserInterfaceStyle.rawValue)
            return UIUserInterfaceStyle(rawValue: rawValue)!
        } set {
            userDefaults.set(newValue.rawValue, forKey: Key.kUserInterfaceStyle.rawValue)
        }
    }
    
    var language: Language {
        get  {
            let rawValue = userDefaults.string(forKey: Key.kLanguage.rawValue)!
            return Language(rawValue: rawValue)!
        } set {
            userDefaults.set(newValue.rawValue, forKey: Key.kLanguage.rawValue)
        }
    }
}

extension GeneralPreferences {
    enum Key: String {
        case kUserInterfaceStyle
        case kLanguage
    }
}
