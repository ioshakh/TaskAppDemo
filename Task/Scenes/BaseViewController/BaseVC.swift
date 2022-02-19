//
//  BaseVC.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController {
    
    private(set) lazy var image:UIImageView = {
       let image = UIImageView()
        image.image = UIImage.gifImageWithName("023abf6fac6adaa2b9778c532f800f52")

       return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        makeNavigationBarTransparent()
        
        view.addSubview(image)
        image.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
   
}

extension BaseViewController {
    func makeNavigationBarTransparent() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
}


