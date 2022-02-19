//
//  offlineVC.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/19.
//

import UIKit

class offlineVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        alert(message:"Iltimos internetni tekshirin")
    }
    
    
    func alert (message:String) {
        let alert = UIAlertController(title:"Internet yo'q", message:message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title:"Ok", style:UIAlertAction.Style.default, handler:nil))
        
        self.present(alert, animated:true, completion:nil)
    }
}
