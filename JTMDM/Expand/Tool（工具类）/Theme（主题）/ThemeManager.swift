//
//  ThemeManager.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit
let ThemeNotifacationName = NSNotification.Name("keyThemeNotifacation")
class ThemeManager: NSObject {
    // 设置默认主题
    var theme:ThemeProtocol = MainTheme()
    
    // ThemeManager 的单例
    static var manager: ThemeManager? = nil
    
    static func shareInstance() -> ThemeManager {
        if manager == nil {
            manager = ThemeManager()
        }
        return manager!
    }
    
    static func switcherTheme(type: ThemeType){
        ThemeManager.shareInstance().switcherTheme(type: type)
    }
    
    static func themeUpdate() {
        NotificationCenter.default.post(name: ThemeNotifacationName, object: ThemeManager.shareInstance().theme)
    }
    
    private override init() {
        
    }
    
    // 切换主题的方法
    private func switcherTheme(type: ThemeType) {
        self.theme = type.theme
        NotificationCenter.default.post(name: ThemeNotifacationName, object: self.theme)
    }
}
