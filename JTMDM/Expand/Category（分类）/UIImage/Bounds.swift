//
//  Bounds.swift
//  JTMDM
//
//  Created by 南天 on 2020/8/3.
//  Copyright © 2020 南天. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    static func createImageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
