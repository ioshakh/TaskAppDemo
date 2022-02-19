//
//  thirdCell.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/19.
//

import UIKit

class thirdCell: UITableViewCell {
    
    private lazy var weekView:UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var weeklabel:UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        return label
    }()
    
    private lazy var weekImage:UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .green
        return img
    }()
    
    private lazy var weekLow:UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .blue
        return lbl
    }()
    
    private lazy var weekHigh:UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .red
        return lbl
    }()
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        thirdViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension thirdCell {
    private func thirdViewConstraints() {
        addSubview(weekView)
        weekView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        weekView.addSubview(weeklabel)
        weeklabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(10)
            make.left.equalToSuperview().inset(30)
            make.width.equalTo(70)
        }
        
        weekView.addSubview(weekImage)
        weekImage.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(10)
            make.left.equalTo(weeklabel.snp.right).offset(50)
            make.width.equalTo(30)
        }
        
        
        weekView.addSubview(weekLow)
        weekLow.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(10)
            make.left.equalTo(weekImage.snp.right).offset(40)
            make.width.equalTo(30)
        }
        
       
        weekView.addSubview(weekHigh)
        weekHigh.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(20)
            make.width.equalTo(30)
            make.left.equalTo(weekLow.snp.right).offset(20)
            make.top.bottom.equalToSuperview().inset(10)
        }
      
        
    }
}
