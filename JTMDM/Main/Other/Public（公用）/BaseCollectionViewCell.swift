//
//  BaseCollectionViewCell.swift
//  JTMDM
//
//  Created by 南天 on 2020/8/26.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit
class BaseCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    open func setupLayout(){}
}
