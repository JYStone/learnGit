//
//  ThemeViewController.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit
enum ThemeType2: Int {
    case Main, Red, Green, Yellow, light, DarkLight
    var themeType1: ThemeType {
        get {
            switch self {
            case .Main:
                return .mainTheme
            case .Red:
                return .redTheme
            case .Green:
                return .grassTheme
            case .Yellow:
                return .yellowTheme
            case .light:
                return .lightTheme
            case .DarkLight:
                return .darkLightTheme
            }
        }
    }
}
class ThemeViewController: NTCommonTableViewController {
    var selectIndexRow: Int = 0
    lazy var dataArray:[String] = {
        let arr = ["蓝色", "红色", "黄色", "黄色", "浅色系", "深色系"]
        return arr
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "主题"
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "identifier")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "identifier")
        }
        cell?.selectionStyle = .none
        cell?.textLabel?.text = dataArray[indexPath.row]
        if indexPath.row == selectIndexRow {
            cell?.accessoryType = .checkmark
        } else {
            cell?.accessoryType = .none
        }
        
        if cell?.accessoryType == .checkmark {
//            guard let cellType: ThemeType2 = ThemeType2(rawValue: indexPath.row)
//            self.switherTheme(index: cellType))
        }
        return cell!
    }
    func switherTheme(index: ThemeType) {
//        ThemeManager.switcherTheme(type: index.theme)
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectIndexRow = indexPath.row
        self.tableView.reloadData()
    }
}
