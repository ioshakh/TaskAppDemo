//
//  HomeVC + AutoLayout.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import UIKit
import SnapKit

extension HomeVC {
    
    override func embedSubviews() {
        view.addSubview(searchField)
        view.addSubview(cityLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(weatherIcon)
        view.addSubview(contentView)
        view.addSubview(windViewInfo)
        view.addSubview(activity)
        
    }
    
    override func setSubviewsConstraints() {
      setLabelsConstraints()
       weatherImageIconConstraints()
       contentViewConfigure()
       infoWindViewConfigure()
       activityConstraints()
    }
}

///Mark : View Constraints

extension HomeVC {
    
    private func setLabelsConstraints() {
        cityLabel.snp.makeConstraints { make in
            make.top.equalTo(searchField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.6)
            make.height.equalTo(50)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(cityLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(40)
        }
        
      
        searchField.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(50)
        }
    }
    
    private func weatherImageIconConstraints() {
        weatherIcon.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(180)
        }
    }
    
    private func contentViewConfigure() {
        contentView.snp.makeConstraints { make in
            make.top.equalTo(weatherIcon.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalTo(40)
            
        }
    }
    
    private func infoWindViewConfigure() {
        windViewInfo.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(30)
            
        }
    }
    
    private func activityConstraints() {
        activity.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(searchField.snp.bottom).offset(40)
            make.width.height.equalTo(20)
        }
    }
}
