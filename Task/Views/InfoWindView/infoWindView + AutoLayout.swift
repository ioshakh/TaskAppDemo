//
//  infoWindView + AutoLayout.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import Foundation
import SnapKit
import UIKit

extension infoWindView {
    
    override func embedSubviews() {
        addSubview(windStackView)
        windStackView.addArrangedSubview(symbolImage)
        windStackView.addArrangedSubview(speedLabel)
        windStackView.addArrangedSubview(directionLabel)
    }
    
    override func setSubviewsConstraints() {
        stackViewConstraints()
    }
}

///Mark info view constraints

extension infoWindView {
    private func stackViewConstraints() {
        windStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
