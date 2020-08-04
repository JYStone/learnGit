//
//  NTAlert.swift
//  JTMDM
//
//  Created by 南天 on 2020/8/3.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class NTALert { // 处理 取消按钮 + N个按钮 的点击事件
    static func showAlert(titleStr: String?, msgStr: String?, style: UIAlertController.Style = .alert, currentVC: UIViewController, cancelBtn: String = "取消", cancelHandler:((UIAlertAction) -> Void)?, otherBtns:Array<String>?, otherHandler:((Int) -> ())?) {
        //DispatchQueue.global().async{}//子线程
        DispatchQueue.main.async { // 主线程执行
            let alertController = UIAlertController(title: titleStr, message: msgStr,preferredStyle: style)
            //取消按钮
            let cancelAction = UIAlertAction(title:cancelBtn, style: .cancel, handler:{ (action) -> Void in
                cancelHandler?(action)
            })
            alertController.addAction(cancelAction)
            //其他按钮
            if otherBtns != nil {
                for (index, value) in (otherBtns?.enumerated())! {
                    let otherAction = UIAlertAction(title: value, style: .default, handler: { (action) in
                        otherHandler!(index)
                    })
                    alertController.addAction(otherAction)
                }
            }
             currentVC.present(alertController, animated: true, completion: nil)
        }
    }
}

/*
 调用方法：
         NTALert.showAlert(titleStr: "标题", msgStr: "内容", currentVC: self, cancelHandler: { (cancelAction) in
             NSLog("点击了取消按钮")
         }, otherBtns: ["拍照","相册","录像","小视频"]) { (idx) in
             NSLog("点击了第\(idx)个按钮")
         }
         
         NTALert.showAlert(titleStr: nil, msgStr: "电话号码不能为空,是否删除该联络人？", currentVC: self, cancelHandler: nil, otherBtns: nil, otherHandler: nil)
 */
