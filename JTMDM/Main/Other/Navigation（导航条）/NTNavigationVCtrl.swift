    //
//  NTNavigationVCtrl.swift
//  JTMDM
//
//  Created by 南天 on 2020/6/23.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class NTNavigationVCtrl: UINavigationController,UINavigationControllerDelegate {

    var popDelegate:UIGestureRecognizerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
        
        self.popDelegate = self.interactivePopGestureRecognizer?.delegate
        self.delegate = self
        self.setNavigationBarTheme()
    }
    
    func setNavigationBarTheme() {
//        self.navigationBar.backgroundColor = UIColor.yellow
        self.navigationBar.tintColor = UIColor.black
        //navigationBar字体颜色设置
        self.navigationBar.barTintColor = UIColor.blue
        //navigationBar字体颜色设置
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)), name: ThemeNotifacationName, object: nil)
    }
    
    func setBarButtonItemTheme() {
        
    }
    //MARK: - UIGestureRecognizerDelegate代理
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        //实现滑动返回的功能
        //清空滑动返回手势的代理就可以实现
        if viewController == self.viewControllers[0] {
            
            self.interactivePopGestureRecognizer?.delegate = self.popDelegate
            
        } else {
            
            self.interactivePopGestureRecognizer?.delegate = nil;
        }
    }
    
    //拦截跳转事件
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.children.count > 0 {
            
            viewController.hidesBottomBarWhenPushed = true
            //添加图片
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "nav_back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(leftClick))
            //添加文字
//            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "返回", style: .plain, target: self, action: #selector(leftClick))
        }
        super.pushViewController(viewController, animated: animated)
        
    }
    
    //返回上一层控制器
    @objc func leftClick()  {
        popViewController(animated: true)
    }
    
    @objc func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
//        self.view.backgroundColor = theme.backgroundColor
        self.navigationBar.barTintColor = theme.themeColor
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("释放")
    }
}
         
