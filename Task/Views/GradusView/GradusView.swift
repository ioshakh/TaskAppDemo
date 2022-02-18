//
//  GradusView.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit

class ViewMain:UIView {
    
    
    private(set) lazy var stackGradus: UIStackView = {
       let view = UIStackView()
        view.distribution = .fillProportionally
        view.spacing = 3
        view.axis = .vertical
       return view
    }()
    
    private(set) lazy var numLabel: UILabel = {
       let view = UILabel()
        view.backgroundColor = .red
        view.text = "45"
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize:45)
       return view
    }()
    
    
    private(set) lazy var textLabel:UILabel = {
       let lbl = UILabel()
        lbl.backgroundColor = .red
        lbl.textAlignment = .center
        lbl.text = "Low"
        lbl.font = UIFont.systemFont(ofSize:15)
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

