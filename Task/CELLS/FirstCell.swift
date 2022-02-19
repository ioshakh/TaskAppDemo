//
//  FirstCell.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit
import SnapKit


class FirstCell: UITableViewCell {

    private lazy var firstCellView:UIView = {
       let view = UIView()
       return view
    }()
    
    private lazy var firtCellImage:UIImageView = {
       let img = UIImageView()
        img.tintColor = .darkGray
        img.contentMode = .scaleAspectFit
       return img
    }()
    
    private lazy var firstCellLabel:UILabel = {
       let text = UILabel()
        text.textColor = .darkGray
        text.font = UIFont.boldSystemFont(ofSize:17)
       return text
    }()
    
    private lazy var firstCellInfo:UILabel = {
       let text = UILabel()
        text.textColor = .darkGray
        text.textAlignment = .right
        text.font = UIFont.systemFont(ofSize:17, weight:.thin)
       return text
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
     func configure(with firstModel:DetailModelPresentable) -> (Void) {
         firstCellLabel.text = firstModel.detailLable
         firstCellInfo.text = firstModel.detailinfo
         firtCellImage.image = firstModel.detailImage
    }
}


extension FirstCell {
    private func cellConstraints() {
        addSubview(firstCellView)
        firstCellView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        
        firstCellView.addSubview(firtCellImage)
        firtCellImage.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(5)
            make.left.equalTo(30)
            make.width.equalTo(30)
        }
        
        
        firstCellView.addSubview(firstCellLabel)
        firstCellLabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(5)
            make.left.equalTo(firtCellImage.snp.right).offset(20)
            make.width.equalTo(100)
        }
        
        
        firstCellView.addSubview(firstCellInfo)
        firstCellInfo.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(5)
            make.right.equalTo(-10)
            make.width.equalTo(100)
        }
    }
}
