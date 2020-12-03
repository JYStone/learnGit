//
//  HomeViewController.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/7.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit
import SwiftUI
import SnapKit
import HandyJSON
class HomeViewController: NTCommonViewController, UITableViewDelegate, UITableViewDataSource{
    var tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
//        self.navigationController?.barStyle(.theme)
        self.createTableView()
        // 搜索框
        
        // 扫描框
        self.creatSearchView()
        self.createRightItemButton()
        1
        2
        3
        4
        5
        6
        7
        8
        
        self.creatSearchView()
        self.createRightItemButton()
        
        self.creatSearchView()
        self.createRightItemButton()
        // 四个按钮
        self.creatTopView()
        // 轻应用
        
        // 轮播图
        // 新闻
        self.creatSearchView()
        // 扫描框
        self.creatSearchView()
        self.createRightItemButton()
        
        self.creatSearchView()
        self.createRightItemButton()
        
        self.creatSearchView()
        self.createRightItemButton()
        
        // 扫描框
        self.creatSearchView()
        self.createRightItemButton()
        
        self.creatSearchView()
        self.createRightItemButton()
        
        self.creatSearchView()
        self.createRightItemButton()
        // 四个按钮
        self.creatTopView()
        // 轻应用
        
        // 轮播图
        // 新闻

        self.loadLightAppData()
    }
    // 获取轻应用列表
    func loadLightAppData() {
        guard let path = Bundle.main.path(forResource: "app010", ofType: "json") else { return }
    }
    // 获取新闻列表
    func loadNewsData() {
        
    }
    
    @objc func searchBtnClick(_button:UIButton) {
        print("点击了搜索框")
    }
    
    @objc func navigationItemSearchAction() {
        print("点击了导航栏右侧的按钮")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 2 {
            return 4
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: AppFrame.ScreenWidth, height:  10))
        headerView.backgroundColor = AppColor.thickSplitLine
        return headerView
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footView = UIView(frame: CGRect(x: 0, y: 0, width: AppFrame.ScreenWidth, height:  1))
        footView.backgroundColor = AppColor.thickSplitLine
        return footView
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            let itemWidth: CGFloat = (AppFrame.ScreenWidth > AppFrame.ScreenHeight ? AppFrame.ScreenHeight : AppFrame.ScreenWidth)/4;
            let itemCount: CGFloat = AppFrame.ScreenWidth/itemWidth;
            let itemRow = CGFloat(ceilf(Float(6/itemCount)))
            return 80*itemRow;
        } else if indexPath.section == 1 {
            return 105
        } else if indexPath.section == 2 {
            return 150
        } else {
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let identifier = "section0Identifier"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            if  cell == nil {
                cell = HomeLightAppListCell(style: .subtitle, reuseIdentifier: identifier)
            }
            return cell!
        }
        if indexPath.section == 1 {
            let identifier = "section1Identifier"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            if  cell == nil {
                cell = HomeBannerCell(style: .subtitle, reuseIdentifier: identifier)
            }
            return cell!
        } else {
            let identifier = "homeCell"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            if cell == nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
            }
            cell?.selectionStyle = .none
            cell?.textLabel?.text = "\(indexPath.row)"
            return cell!
        }
    }
    
    func creatTopView() {
      let array:[String] = ["工作", "网盘", "日程", "协作"];
      for index in 0 ..< 4  {
          //按钮
        let shareButton = UIButton.init(frame: CGRect.init(x: (AppFrame.ScreenWidth/4) * CGFloat(index), y: 0, width: AppFrame.ScreenWidth/4, height: 90))
        shareButton.backgroundColor = UIColor.blue
        shareButton.tag = 100+index
        shareButton.addTarget(self, action: #selector(shareButtonClick(button:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(shareButton)
        
        let bgImageView = UIImageView.init(image: UIImage.init(named: "share_" + String(index+1)))
        shareButton.addSubview(bgImageView)
        bgImageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(shareButton).offset(-8)
        }

        let textLabel = UILabel.init()
        shareButton.addSubview(textLabel)
        textLabel.textAlignment = .center
        textLabel.textColor = UIColor.white
        textLabel.font = UIFont.systemFont(ofSize: 14)
        textLabel.text = array[index]
        textLabel.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(bgImageView.snp.bottom).offset(5)
            make.height.equalTo(20)
        }
      }
    }
    
    @objc func shareButtonClick(button:UIButton){
        NSLog(button.tag)
    }
    
    func createTableView() {
        let tableView: UITableView = UITableView.init(frame: CGRect
            .zero, style: .grouped)
        self.tableView = tableView;
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(tableView)
        NSLog(AppFrame.kNavigationBarHeight)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 90, left: 0, bottom: 0, right: 0))
        }
    }
    //.inset(UIEdgeInsets(top: AppFrame.kNavigationBarHeight, left: 0, bottom: 0, right: 0))
    func creatSearchView() {
        let button:UIButton = UIButton.init(type: .custom)
        button.frame = CGRect.init(x: 0, y: 0, width: AppFrame.ScreenWidth-60-16, height: 30)
        let image = UIImage(named: "transparent_bar.png")?.resizableImage(withCapInsets: UIEdgeInsets.init(top: 8, left: 15, bottom: 8, right: 15), resizingMode: UIImage.ResizingMode.stretch)
        button.setBackgroundImage(image, for: UIControl.State.normal)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        self.navigationItem.titleView = button
        button.addTarget(self, action: #selector(self.searchBtnClick(_button:)), for: UIControl.Event.touchUpInside)
        
        let textLabel = UILabel.init(frame: CGRect.init(x: 50, y: 0, width: 200, height: 30))
        textLabel.text = "请输入搜索内容"
        textLabel.textColor = UIColor.white
        button.addSubview(textLabel)
        
        let searchImageView = UIImageView.init(image: UIImage(named: "home_search.png"))
        searchImageView.frame = CGRect.init(x: 0, y: 3, width: 52*0.75, height: 24);
        button.addSubview(searchImageView)
    }
    
    func createRightItemButton() {
        //navitem search 搜索按钮
        let buttonSearch = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
        buttonSearch.setImage(UIImage.init(named: "首页右侧按钮"), for:.normal)
        buttonSearch.addTarget(self, action: #selector(navigationItemSearchAction), for: UIControl.Event.touchUpInside)
        let barButtonSearch = UIBarButtonItem(customView: buttonSearch)
        self.navigationItem.rightBarButtonItem = barButtonSearch
    }
}
