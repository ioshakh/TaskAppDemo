//
//  DetailModel.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import Foundation
import UIKit

protocol DetailModelPresentable {
    var detailLable:String? { get }
    var detailImage:UIImage? { get }
    var detailinfo:String? { get }
}

class DetailModelItems: DetailModelPresentable {
    
    var detailImage: UIImage?
    var detailLable: String? = ""
    var detailinfo: String? = ""
    
    
    init(detailImage:UIImage,detailLable:String,detailinfo:String) {
        self.detailinfo = detailinfo
        self.detailLable = detailLable
        self.detailImage =  detailImage
    }
    
    deinit {
        print("title and image")
    }
}


class ViewModel {
    init() {
        let firstStep = DetailModelItems(detailImage:UIImage(systemName:"wind")! , detailLable:"wind", detailinfo:"SE 6MPH")
        let secondStep = DetailModelItems(detailImage:UIImage(systemName:"thermometer.sun")! , detailLable:"Humidity", detailinfo:"35%")
        let thirdStep = DetailModelItems(detailImage:UIImage(systemName:"cloud.rain")! , detailLable:"DEW POINT", detailinfo:"40")
        let fourthStep = DetailModelItems(detailImage:UIImage(systemName:"thermometer.sun")! , detailLable:"PRESSURE", detailinfo:"30.01 ln")
        let fifthStep = DetailModelItems(detailImage:UIImage(systemName:"eye")! , detailLable:"VISIBILTY", detailinfo:"10.0 Mi")
        
        
        items.append(contentsOf:[firstStep,secondStep,thirdStep,fourthStep,fifthStep])
    }
    
    
    var items: [DetailModelPresentable] = []
}

