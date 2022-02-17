//
//  AppDelegate.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setViewConfigure()
       
       
        return true
    }
    
    private func setViewConfigure() {
        let vc = HomeVC()
        let nv = UINavigationController(rootViewController:vc)
        self.window = UIWindow(frame:UIScreen.main.bounds)
        self.window?.rootViewController = nv
        self.window?.makeKeyAndVisible()
        UINavigationBar.appearance().tintColor = .white
    }
}

