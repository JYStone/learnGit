//
//  LightAppCell.swift
//  JTMDM
//
//  Created by 南天 on 2020/8/3.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class LightAppCell: UICollectionViewCell {
    lazy var imageView: UIImageView = {
        let imageV = UIImageView()
        imageV.backgroundColor = randomColor()
        return imageV
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = RGB0X(hexValue: 0x333333)
        label.textAlignment = .center
        label.backgroundColor = randomColor()
        return label
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-5)
            make.width.height.equalTo(40)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(15)
            make.left.right.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(5)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(imageView)
        self.contentView.addSubview(titleLabel)
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
