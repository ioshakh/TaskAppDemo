//
//  GradusView.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit

class ViewMain:UIView {
    
    
    private(set) lazy var mainGradusStack:UIStackView = {
       let view = UIStackView()
        view.spacing = 40
        view.axis = .horizontal
        view.distribution = .fillEqually
       return view
    }()
    
    
    private(set) lazy var stackGradus: UIStackView = {
       let view = UIStackView()
        view.distribution = .fillProportionally
        view.spacing = 3
        view.axis = .vertical
       return view
    }()
    
    private(set) lazy var numLabel: UILabel = {
       let view = UILabel()
        view.text = "23°C"
        view.textColor = .blue
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize:48)
       return view
    }()
    
    private(set) lazy var textLabel:UILabel = {
       let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.text = "Low"
        lbl.tintColor = .lightGray
        lbl.font = UIFont.systemFont(ofSize:20)
       return lbl
    }()
    
    
    private(set) lazy var secondstackGradus: UIStackView = {
       let view = UIStackView()
        view.distribution = .fillProportionally
        view.spacing = 3
        view.axis = .vertical
       return view
    }()
    
    private(set) lazy var secondnumLabel: UILabel = {
       let view = UILabel()
        view.text = "15°C"
        view.textColor = .systemBlue
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize:48)
       return view
    }()
    
    private(set) lazy var secondtextLabel:UILabel = {
       let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.text = "HIGH"
        lbl.textColor = .darkGray
        lbl.font = UIFont.systemFont(ofSize:20)
       return lbl
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

