//
//  infoCardView + Extensions.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import UIKit
import SnapKit

extension infoWeatherView {
    override func embedSubviews() {
        addSubview(stackView)
        stackView.addArrangedSubview(iconImage)
        stackView.addArrangedSubview(minTemp)
        stackView.addArrangedSubview(currentTemp)
        stackView.addArrangedSubview(maxTemp)
        
    }
    
    override func setSubviewsConstraints() {
        stackViewConstraints()
    }
}

///Mark info view constraints

extension infoWeatherView {
    private func stackViewConstraints() {
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
