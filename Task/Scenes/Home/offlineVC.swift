//
//  offlineVC.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/19.
//

import UIKit
import SnapKit

class offlineVC: UIViewController {
    
    private(set) lazy var activitys:UIActivityIndicatorView = {
       let view = UIActivityIndicatorView()
        view.color = .red
        view.style  = .large
        
       return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        alert(message:"Iltimos internetni tekshirin")
        
        
        view.addSubview(activitys)
        activitys.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(20)
        }
    }
    
    
    func alert (message:String) {
        let alert = UIAlertController(title:"Internet yo'q", message:message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title:"Ok", style:UIAlertAction.Style.default, handler:nil))
        activitys.startAnimating()
        self.present(alert, animated:true, completion:nil)
    }
}
