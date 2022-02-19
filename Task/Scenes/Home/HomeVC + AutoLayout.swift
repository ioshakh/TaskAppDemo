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
            make.top.equalTo(searchField.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.6)
            make.height.equalToSuperview().multipliedBy(0.06)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(cityLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalToSuperview().multipliedBy(0.03)
        }
        
      
        searchField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(50)
        }
    }
    
    private func weatherImageIconConstraints() {
        weatherIcon.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(180)
        }
    }
    
    private func contentViewConfigure() {
        contentView.snp.makeConstraints { make in
            make.top.equalTo(weatherIcon.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.06)
        }
    }
    
    private func infoWindViewConfigure() {
        windViewInfo.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalToSuperview().multipliedBy(0.04)
            
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


