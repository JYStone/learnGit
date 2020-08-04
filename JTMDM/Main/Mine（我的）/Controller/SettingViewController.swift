//
//  SettingViewController.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class SettingViewController: NTCommonTableViewController {

    lazy var dataArray:[String] = {
        let arr = ["声音提醒", "震动提醒", "修改用户名", "修改密码", "主题", "指纹登录", "手势登录", "清理缓存"]
        return arr
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "设置"
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var indetifier1 = "setidentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: "setidentifier")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "setidentifier")
        }
        cell?.selectionStyle = .none
        cell?.textLabel?.text = dataArray[indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 4 {
            let themeVC = ThemeViewController()
            self.navigationController?.pushViewController(themeVC, animated: true)
        }
    }
}
