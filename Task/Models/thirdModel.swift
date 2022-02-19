//
//  thirdModel.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/19.
//

import Foundation
import SnapKit
import UIKit

protocol thirdModelPresentable {
    var thirdLabel:String? { get }
    var thirdImage:UIImage? { get }
    var lowDegree:String? { get }
    var highDegree:String? { get }
}


class ThirdModel:thirdModelPresentable {
    
    var thirdLabel: String? = ""
    
    var thirdImage: UIImage?
    
    var lowDegree: String? = ""
    
    var highDegree: String? = ""
    
    init(thirdLabel:String,thirdImage:UIImage,lowDegree:String,highDegree:String) {
        self.thirdLabel = thirdLabel
        self.thirdImage = thirdImage
        self.lowDegree = lowDegree
        self.highDegree = highDegree
    }
}

class thirdViewModel {
    init() {
        let one = ThirdModel(thirdLabel:"Today", thirdImage:UIImage(systemName:"sun.min")!, lowDegree:"40º", highDegree:"45º")
        let two = ThirdModel(thirdLabel:"Monday", thirdImage:UIImage(systemName:"wind")!, lowDegree:"30º", highDegree:"35º")
        let three = ThirdModel(thirdLabel:"Tuesday", thirdImage:UIImage(systemName:"cloud.fill")!, lowDegree:"45º", highDegree:"35º")
        let four = ThirdModel(thirdLabel:"Wenesday", thirdImage:UIImage(systemName:"cloud.rain")!, lowDegree:"20º", highDegree:"35º")
        let five = ThirdModel(thirdLabel:"Thursday", thirdImage:UIImage(systemName:"cloud.rain")!, lowDegree:"40º", highDegree:"45º")
        let six = ThirdModel(thirdLabel:"Friday", thirdImage:UIImage(systemName:"sun.dust")!, lowDegree:"40º", highDegree:"45º")
        let seven = ThirdModel(thirdLabel:"Saturday", thirdImage:UIImage(systemName:"wind")!, lowDegree:"40º", highDegree:"45º")
        let eight = ThirdModel(thirdLabel:"Sunday", thirdImage:UIImage(systemName:"sun.min.fill")!, lowDegree:"40º", highDegree:"45º")
        let nine = ThirdModel(thirdLabel:"Monday", thirdImage:UIImage(systemName:"wind")!, lowDegree:"40º", highDegree:"45º")
        let ten = ThirdModel(thirdLabel:"Tuesdday", thirdImage:UIImage(systemName:"sun.min.fill")!, lowDegree:"40º", highDegree:"45º")
       
        
        
        thirdItem.append(contentsOf:[one,two,three,four,five,six,seven,eight,nine,ten])
       
    }
    
    var thirdItem: [thirdModelPresentable] = []
}



