//
//  infoCardView.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import UIKit
import SnapKit

class infoWeatherView:UIView {
    
    private(set) lazy var stackView:UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    
    private(set) lazy var minTemp:UILabel = {
        let cityLabel = UILabel()
        cityLabel.font = UIFont.systemFont(ofSize:22)
        cityLabel.textColor = .white
        cityLabel.adjustsFontSizeToFitWidth = true
        cityLabel.minimumScaleFactor = 0.5
        return cityLabel
    }()
    
    private(set) lazy var currentTemp:UILabel = {
        let cityLabel = UILabel()
        cityLabel.font = UIFont.boldSystemFont(ofSize:28)
        cityLabel.textColor = .white
        cityLabel.adjustsFontSizeToFitWidth = true
        cityLabel.minimumScaleFactor = 0.5
        return cityLabel
    }()
    
    private(set) lazy var maxTemp:UILabel = {
        let cityLabel = UILabel()
        cityLabel.textColor = .white
        cityLabel.adjustsFontSizeToFitWidth = true
        cityLabel.minimumScaleFactor = 0.5
        return cityLabel
    }()
    
    private(set) lazy var iconImage:UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName:"thermometer")
        img.tintColor = .gray
        img.contentMode = .scaleAspectFit
        return img
    }()
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
