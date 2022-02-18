//
//  DetailView + AutoLayout.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit
import SnapKit

extension detailView {
    
    override func embedSubviews() {
        addSubview(detailContentView)
        detailContentView.addSubview(detailStackView)
        detailStackView.addArrangedSubview(rightLabel)
        detailStackView.addArrangedSubview(gradusLabel)
        detailStackView.addArrangedSubview(temperatureLabel)
        detailStackView.addArrangedSubview(pinLabel)
        detailContentView.addSubview(PinImageView)
        detailContentView.addSubview(plusButton)
    }
    
    override func setSubviewsConstraints() {
        contentViewConfigure()
        stackViewConfigure()
        configure()
        imageViewconfigure()
    }
}

//Mark AutoLayOut

extension detailView {
    private func contentViewConfigure() {
        detailContentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func stackViewConfigure() {
        detailStackView.snp.makeConstraints { make in
            make.top.bottom.left.equalToSuperview().inset(10)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
    }
    
    
    private func configure() {
        rightLabel.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        
        gradusLabel.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.3)
        }

        temperatureLabel.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.2)
        }

        pinLabel.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.2)
        }
    }
    
    
    private func imageViewconfigure() {
        PinImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().inset(30)
            make.width.equalToSuperview().multipliedBy(0.2)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        
        plusButton.snp.makeConstraints { make in
            make.top.equalTo(PinImageView.snp.top).offset(30)
            make.width.height.equalTo(35)
            make.right.equalTo(PinImageView.snp.left).offset(-20)
        }
    }
}
