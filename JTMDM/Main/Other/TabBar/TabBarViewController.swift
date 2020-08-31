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
        tabBar.isTranslucent = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setUpTabBar()
    }
    
    // MARK: - 控制器的信息
    func setUpTabBar() {
        
        let homeVC  = HomeViewController()
        addChildController(homeVC, title:"首页", image:UIImage(named:"tab_home"), selectedImage:UIImage(named:"tab_home_selected"))
        
        let applicationVC  = ApplicationViewController()
        addChildController(applicationVC, title:"应用", image:UIImage(named:"application"), selectedImage:UIImage(named:"application_selected"))
        
        let MsgVC  = MsgViewController()
        addChildController(MsgVC, title:"消息", image:UIImage(named:"tab_msg"), selectedImage:UIImage(named:"tab_msg_selected"))
        
        let docVC  = DocViewController()
        addChildController(docVC, title:"文档", image:UIImage(named:"tab_doc"), selectedImage:UIImage(named:"tab_doc_selected"))
        
        let mineVC  = MineViewController()
        addChildController(mineVC, title:"我的", image:UIImage(named:"tab_me"), selectedImage:UIImage(named:"tab_me_selected"))
    }
    
    // MARK: - TabBar里面的文字图片
    func addChildController(_ childController: UIViewController, title: String?, image: UIImage?, selectedImage: UIImage?) {
        childController.tabBarItem = UITabBarItem(title: nil, image: image?.withRenderingMode(.alwaysOriginal), selectedImage: selectedImage?.withRenderingMode(.alwaysOriginal))
        if UIDevice.current.userInterfaceIdiom == .phone{
            childController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
        childController.title = title
        addChild(NavigationViewController(rootViewController: childController))
    }
}

extension TabBarViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        guard let select = selectedViewController else { return .lightContent }
        return select.preferredStatusBarStyle
    }
}
