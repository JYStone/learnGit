//
//  ThemeSwitchCell.swift
//  JTMDM
//
//  Created by 南天 on 2020/8/25.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

enum CellTitleType: Int {
    case White, Black, Green, Red, Yellow, Blue
    var title : String {
        get {
            switch self {
            case .White:
                return "白色主题"
            case .Black:
                return "黑色主题"
            case .Green:
                return "绿色主题"
            case .Red:
                return "红色主题"
            case .Yellow:
                return "黄色主题"
            case .Blue:
                return "蓝色主题"
            }
        }
    }
    var detail : String {
        get {
            switch self {
            case .White:
                return "背景白色，字体黑色"
            case .Black:
                return "背景黑色，字体白色"
            case .Green:
                return "背景绿色，字体红色"
            case .Red:
                return "背景红色，字体白色"
            case .Yellow:
                return "背景黄色，字体红色"
            case .Blue:
                return "背景蓝色，字体白色"
            }
        }
    }
    var themeType : ThemeType {
        get {
            switch self {
            case .White:
                return .mainTheme
            case .Black:
                return .yellowTheme
            case .Green:
                return .redTheme
            case .Red:
                return .grassTheme
            case .Yellow:
                return .lightTheme
            case .Blue:
                return .darkLightTheme
            }
        }
    }
}
class ThemeSwitchCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
    func configCell(index: Int) {
        guard let cellType: CellTitleType = CellTitleType(rawValue: index) else {
            return
        }
        self.textLabel?.text = cellType.title
        self.detailTextLabel?.text = cellType.detail
        if self.accessoryType == .checkmark {
            self.switherTheme(type: cellType)
        }
    }
    
    func switherTheme(type: CellTitleType) {
        ThemeManager.switcherTheme(type: type.themeType)
        // 缓存一下本地存储的颜色
        UserDefaults.
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
