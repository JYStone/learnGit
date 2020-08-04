//
//  LightTheme.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class LightTheme: ThemeProtocol {
    var titleTextColor: UIColor {
        get {
            return UIColor.gray
        }
    }
    
    var detailTextColor: UIColor {
        get {
            return UIColor.black
        }
    }
    
    var themeColor: UIColor {
        get {
            return UIColor.blue
        }
    }
    

    var backgroundColor: UIColor {
        get {
            return UIColor.white
        }
    }
}
