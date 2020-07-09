//
//  MineViewController.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/7.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class MineViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

/*
 var tableview: UITableView!
     :UITableViewDelegate, UITableViewDataSource
     // 懒加载数据源
     /*
      Swift懒加载只会在首次使用的时候创建一次，之后再次使用或者新赋值都不会去重新创建了，而是就保存新设置的值
      */
     lazy var dataArray:[String] = {
         let arr = ["头像","设置","意见反馈","设备信息","关于","切换账号","退出登录"]
         return arr
     }()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         self.view.backgroundColor = UIColor.white
         self.creatTabeleView()
     }
     
     func creatTabeleView() -> Void{
         self.tableview = UITableView.init(frame: self.view.frame, style: .plain)
         self.tableview.delegate = self
         self.tableview.dataSource = self
         self.view.addSubview(self.tableview)
     }
     func numberOfSections(in tableView: UITableView) -> Int {
         return 1
     }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return self.dataArray.count
     }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 60
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let identifier = "MineVC"
         var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
         if cell == nil {
             cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
         }
         cell?.selectionStyle = .none
         cell?.textLabel?.text = self.dataArray[indexPath.row]
         return cell!
     }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         if indexPath.row == 1 {
             let setVC  = SettingViewController()
             self.navigationController?.pushViewController(setVC, animated: true)
         }
         print("\(indexPath.row)")
     }
 }

 */
