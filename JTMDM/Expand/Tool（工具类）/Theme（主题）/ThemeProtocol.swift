//
//  ThemeProtocol.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

// 主题协议，所有主题都遵循该协议
protocol ThemeProtocol {
    var backgroundColor: UIColor {get}
    var titleTextColor: UIColor {get}
    var detailTextColor: UIColor {get}
    var themeColor: UIColor {get}
    
}

// 一个简单的工厂类
enum ThemeType {
    case mainTheme
    case yellowTheme
    case redTheme
    case grassTheme
    case lightTheme
    case darkLightTheme
    var theme: ThemeProtocol {
        get {
            switch self {
            case .mainTheme:
                return MainTheme()
            case .yellowTheme:
                return YellowTheme()
            case .redTheme:
                return RedTheme()
            case .grassTheme:
                return GrassTheme()
            case .lightTheme:
                return LightTheme()
            case .darkLightTheme:
                return DarkLightTheme()
            }
        }
    }
}
