//
//  languageModel.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import Foundation

enum Language: String {
    case uzbek
    case english
    case russian
    
    var isoCode: String {
        switch self {
        case .uzbek:
            return "uz"
        case .english:
            return "en"
        case .russian:
            return "ru"
        }
    }
}
