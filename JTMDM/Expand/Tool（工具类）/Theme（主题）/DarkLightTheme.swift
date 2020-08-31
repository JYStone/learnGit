//
//  DarkLightTheme.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class DarkLightTheme: ThemeProtocol {
    //主色调，用于突出的文字、按钮和icon
    //如重要按钮，标签栏图标选中状态
    var themeColor: UIColor {
        return UIColor.darkGray
    }
    //辅助色，用于警告性颜色、重要文字
    //如重要按钮，标签栏图标选中状态备份
    var auxiliaryColor: UIColor {
        return RGB0X(hexValue: 0x2E77FE)
    }
    
    //用于标题、标签栏、重要文字信息
    var titleColor: UIColor {
        return RGB0X(hexValue: 0x2E77FE)
    }
    
    //用于次要文字信息
    var secondaryTextColor: UIColor {
        return RGB0X(hexValue: 0x2E77FE)
    }
    
    //用于辅助性文字信息
    var auxiliaryTextColor: UIColor {
        return RGB0X(hexValue: 0x2E77FE)
    }
    
    //用于分割线
    var lineColor: UIColor {
        return RGB0X(hexValue: 0x2E77FE)
    }
    
    //用于分模块底色
    var wideLineColor: UIColor {
        return RGB0X(hexValue: 0x2E77FE)
    }
    
    //背景色
    var backgroundColor: UIColor {
        return RGB0X(hexValue: 0x2E77FE)
    }
    
    //导航条渲染色
    var navigationTintColor: UIColor {
        return UIColor.white
    }
    
    var maskDarkColor: UIColor {
        get {
            return UIColor.gray
        }
    }
    
    var placeholderColor: UIColor {
        get {
            return UIColor.gray
        }
    }
}
