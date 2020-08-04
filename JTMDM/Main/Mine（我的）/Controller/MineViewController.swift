//
//  MineViewController.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/7.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class MineViewController: NTCommonTableViewController{
    // 懒加载数据源
    /*
     Swift懒加载只会在首次使用的时候创建一次，之后再次使用或者新赋值都不会去重新创建了，而是就保存新设置的值
     */
    lazy var dataArray:[String] = {
        let arr = ["头像", "设置", "意见反馈","设备信息","关于","切换账号","退出登录"]
        return arr
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.requestData(resource: "MineData")
    }

    func requestData(resource: String) {
//        let path1:String =Bundle.main.path(forResource: resource, ofType: "plist")!


    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        } else {
            return 60
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 15
    }
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height:  15))
        footView.backgroundColor = UIColor.yellow
        return footView
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "MineVCCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        }
        cell?.selectionStyle = .none
        cell?.textLabel?.text = self.dataArray[indexPath.section]
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let setVC  = SettingViewController()
            self.navigationController?.pushViewController(setVC, animated: true)
        }
    }
}
