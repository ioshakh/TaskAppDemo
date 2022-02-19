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
       addSubview(mainGradusStack)
       mainGradusStack.addArrangedSubview(stackGradus)
       mainGradusStack.addArrangedSubview(secondstackGradus)
       stackGradus.addArrangedSubview(numLabel)
       stackGradus.addArrangedSubview(textLabel)
       secondstackGradus.addArrangedSubview(secondnumLabel)
       secondstackGradus.addArrangedSubview(secondtextLabel)
    }
    
   override func setSubviewsConstraints() {
        numberGradusConstraints()
        secondnumberGradusConstraints()
        mainStackViewConstraints()
    }
}

extension ViewMain {
    
    private func mainStackViewConstraints() {
        mainGradusStack.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(5)
        }
    }
    
    
    private func numberGradusConstraints() {

        numLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(70)
        }
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(numLabel.snp.bottom).offset(0)
            make.bottom.equalToSuperview().inset(10)
        }
    }
    
    
    private func secondnumberGradusConstraints() {
       
        secondnumLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(70)
        }
        
        secondtextLabel.snp.makeConstraints { make in
            make.top.equalTo(secondnumLabel.snp.bottom).offset(0)
            make.bottom.equalToSuperview().inset(10)
        }
    }
}
