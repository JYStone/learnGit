//
//  AppDelegate.swift
//  JTMDM
//
//  Created by 南天 on 2020/6/23.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = TabBarViewController()
//        UINavigationController(rootViewController: )
        self.window?.makeKeyAndVisible()
        return true
    }
}


