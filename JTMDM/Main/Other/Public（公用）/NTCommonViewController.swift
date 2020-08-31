//
//  NTCommonViewController.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class NTCommonViewController: UIViewController, ThemeManagerProtocol{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeTheme()
        view.backgroundColor = AppColor.themeRed
    }

    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)), name: ThemeNotifacationName, object: nil)
        ThemeManager.themeUpdate()
    }
    
    @objc func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.view.backgroundColor = theme.backgroundColor
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("释放")
    }
}
