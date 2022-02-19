//
//  SecondModel.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/19.
//

import Foundation
import UIKit

protocol SecondModelPresentable {
    var secondLabel:String? { get }
    var secondInfo:String? { get }
}

class SecodModel:SecondModelPresentable {
    var secondLabel: String?
    
    var secondInfo: String?
    
    init(secondLabel:String,secondInfo:String){
        self.secondLabel = secondLabel
        self.secondInfo = secondInfo
    }
}

class SecondViewModel {
    init() {
        let first = SecodModel(secondLabel:"40º", secondInfo:"Now")
        let second = SecodModel(secondLabel:"30º", secondInfo:"12pm")
        let third = SecodModel(secondLabel:"30º", secondInfo:"1pm")
        let fourth = SecodModel(secondLabel:"50º", secondInfo:"2pm")
        let fifth = SecodModel(secondLabel:"25º", secondInfo:"3pm")
        let sixth = SecodModel(secondLabel:"35º", secondInfo:"4pm")
        let seventh = SecodModel(secondLabel:"45º", secondInfo:"5pm")
        let eights = SecodModel(secondLabel:"53º", secondInfo:"6pm")
        let ninth = SecodModel(secondLabel:"29º", secondInfo:"7pm")
        let tenth = SecodModel(secondLabel:"30º", secondInfo:"8pm")
        let eleventh = SecodModel(secondLabel:"19º", secondInfo:"9pm")
        
        secondItem.append(contentsOf:[first,second,third,fourth,fifth,sixth,seventh,eights,ninth,tenth,eleventh])
    }
    
    var secondItem: [SecondModelPresentable] = []
}

