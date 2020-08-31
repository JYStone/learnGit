//
//  ThemeViewController.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/17.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class ThemeViewController: NTCommonTableViewController {
    var selectIndexRow: Int = 0

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
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: ThemeSwitchCell? = tableView.dequeueReusableCell(withIdentifier: "themeCell") as? ThemeSwitchCell
        if cell == nil {
            cell = ThemeSwitchCell(style: .subtitle, reuseIdentifier: "identifier")
        }
        cell?.selectionStyle = .none
        if indexPath.row == selectIndexRow {
            cell?.accessoryType = .checkmark
        } else {
            cell?.accessoryType = .none
        }
        cell!.configCell(index: indexPath.row)
        return cell!
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectIndexRow = indexPath.row
        self.tableView.reloadData()
    }
}
