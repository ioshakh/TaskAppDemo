//
//  SecondCell.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit
import SnapKit

class SecondCell: UITableViewCell {

   
    private lazy var secondMainView:UIView = {
        let view  = UIView()
        return view
    }()
    
    private lazy var labelTime:UILabel = {
       let text = UILabel()
       text.font = UIFont.boldSystemFont(ofSize:13)
       text.backgroundColor = .white
       return text
    }()
    
    private lazy var whiteLine:UIView = {
        let view  = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var labelGradus:UILabel = {
       let text = UILabel()
        text.textAlignment = .center
        text.font = UIFont.systemFont(ofSize:12, weight:.medium)
        text.textColor = .white
        text.backgroundColor = .blue
        text.roundCorners(.allCorners, radius:10)
       return text
    }()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        secondCellAutoLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configurewith(with secondModelitems:SecondModelPresentable) {
        labelTime.text = secondModelitems.secondInfo
        labelGradus.text = secondModelitems.secondLabel
    }
    
    
}


extension SecondCell {
    private func secondCellAutoLayouts() {
        addSubview(secondMainView)
        secondMainView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(0)
            make.left.right.equalToSuperview().inset(40)
            make.height.equalTo(40)
        }
        
        secondMainView.addSubview(labelTime)
        labelTime.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview().inset(10)
            make.width.equalTo(60)
        }
        
        
        secondMainView.addSubview(labelGradus)
        labelGradus.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview().inset(10)
            make.width.equalTo(40)
        }
        
        
        secondMainView.addSubview(whiteLine)
        whiteLine.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(labelTime.snp.right).offset(20)
            make.right.equalTo(labelGradus.snp.left).offset(0)
            make.height.equalTo(0.5)
        }
    }
}
