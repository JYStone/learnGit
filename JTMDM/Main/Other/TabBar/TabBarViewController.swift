//
//  TabBarViewController.swift
//  Hahn_Tabbar_Swfir
//
//  Created by Hahn on 2019/6/24.
//  Copyright © 2019 Hahn. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setUpTabBar()
    }
    
    // MARK: - 控制器的信息
    func setUpTabBar() {
        
        let demo1VC  = HomeViewController()
        let demo2VC  = ApplicationViewController()
        let demo3VC  = MsgViewController()
        let demo4VC  = DocViewController()
        let demo5VC  = MineViewController()
        
        creatTabbarView(viewController: demo1VC, image: "tab_home", selectImage: "tab_home_selected", title: "首页")
        creatTabbarView(viewController: demo2VC, image: "application", selectImage: "application_selected", title: "应用")
        creatTabbarView(viewController: demo3VC, image: "tab_msg", selectImage: "tab_msg_selected", title: "消息")
        creatTabbarView(viewController: demo4VC, image: "tab_doc", selectImage: "tab_doc_selected", title: "文档")
        creatTabbarView(viewController: demo5VC, image: "tab_me", selectImage: "tab_me_selected", title: "我的")
        
        self.tabBar.tintColor = UIColor(red: 46/255.0, green: 119/255.0, blue: 254/255.0, alpha: 1)
        self.tabBar.isTranslucent = false
        
        self.viewControllers = [
            NTNavigationVCtrl(rootViewController: demo1VC),
            NTNavigationVCtrl(rootViewController: demo2VC),
            NTNavigationVCtrl(rootViewController: demo3VC),
            NTNavigationVCtrl(rootViewController: demo4VC),
            NTNavigationVCtrl(rootViewController: demo5VC),
        ];
    }
    
    // MARK: - TabBar里面的文字图片
    func creatTabbarView(viewController:UIViewController, image:NSString, selectImage:NSString, title:NSString) {
        // alwaysOriginal 始终绘制图片原始状态，不使用Tint Color。
        viewController.tabBarItem.image = UIImage(named: image as String)?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.selectedImage = UIImage(named: selectImage as String)?.withRenderingMode(.alwaysOriginal)
        viewController.title = title as String
    }
}
