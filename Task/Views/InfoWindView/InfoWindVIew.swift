//
//  InfoWindVIew.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import UIKit
import SnapKit

class infoWindView:UIView {
    
    private(set) lazy var windStackView:UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 10
        view.distribution = .fillEqually
        return view
    }()
    
    
    private(set) lazy var symbolImage:UIImageView = {
       let imgIcon = UIImageView()
        imgIcon.image = UIImage(systemName:"wind")
        imgIcon.tintColor = .gray
        imgIcon.contentMode = .scaleAspectFit
       return imgIcon
    }()
    
    private(set) lazy var speedLabel:UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize:23)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
       return label
    }()
    
    private(set) lazy var directionLabel:UILabel = {
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.font = UIFont.systemFont(ofSize:18)
        label.textColor = .white
       return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
