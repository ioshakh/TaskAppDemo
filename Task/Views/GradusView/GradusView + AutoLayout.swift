//
//  GradusView + AutoLayout.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import SnapKit
import UIKit

extension ViewMain {
    
   override func embedSubviews() {
        addSubview(stackGradus)
       stackGradus.addArrangedSubview(numLabel)
       stackGradus.addArrangedSubview(textLabel)
    }
    
   override func setSubviewsConstraints() {
        numberGradusConstraints()
    }
}

extension ViewMain {
    private func numberGradusConstraints() {
        stackGradus.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(5)
            make.width.equalTo(80)
            make.left.equalTo(50)
        }
        
        numLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(70)
        }
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(numLabel.snp.bottom).offset(3)
            make.bottom.equalToSuperview().inset(10)
        }
    }
}
