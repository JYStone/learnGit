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
    //主色调，用于突出的文字、按钮和icon
    //如重要按钮，标签栏图标选中状态
    var themeColor: UIColor { get }
    //辅助色，用于警告性颜色、重要文字
    //如重要按钮，标签栏图标选中状态备份
    var auxiliaryColor: UIColor { get }
    //标题、标签栏、重要文字信息
    var titleColor: UIColor { get }
    //次要文字信息
    var secondaryTextColor: UIColor { get }
    //辅助性文字信息
    var auxiliaryTextColor: UIColor { get }
    //分割线
    var lineColor: UIColor { get }
    //分模块底色
    var wideLineColor: UIColor { get }
    //背景色
    var backgroundColor: UIColor { get }
    //导航条渲染色
    var navigationTintColor: UIColor { get }
    // 深色背景罩颜色
    var maskDarkColor: UIColor { get }
    
    /* UIControl */
    /* UIButton */
    /* UISwitch */
    /* UITextField */
    // 全局输入框 placeholder 的字体颜色
    var placeholderColor: UIColor { get }
    /* NavigationBar */
    /* TabBar */
    
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
