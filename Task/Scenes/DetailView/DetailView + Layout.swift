//
//  DetailView + Layout.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit
import SnapKit

extension DetailView {
    
    override func embedSubviews() {
        view.addSubview(headerView)
        view.addSubview(segmentControl)
        view.addSubview(tableView)
    }
    
    override func setSubviewsConstraints() {
        headerViewConfigure()
        segmentControllConstraints()
        tableViewConstraints()
    }
}

extension DetailView {
    private func headerViewConfigure() {
        headerView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.2)
        }
    }
    
    
    private func segmentControllConstraints() {
        segmentControl.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.05)
        }
    }
    
    
    private func tableViewConstraints() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(segmentControl.snp.bottom).offset(10)
            make.bottom.left.right.equalToSuperview()
        }
    }
    
}
