//
//  GXBannerTestCell.swift
//  GXBannerSample
//
//  Created by Gin on 2020/7/24.
//  Copyright © 2020 gin. All rights reserved.
//

import UIKit

class GXBannerTestCell: UICollectionViewCell {
    lazy var imageView: UIImageView = {
        let imageV = UIImageView()
        imageV.backgroundColor = randomColor()
        imageV.clipsToBounds = true
        imageV.layer.cornerRadius = 5;
        return imageV
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.imageView.snp.makeConstraints { (make) in
             make.edges.equalTo(self.contentView).inset(UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0))
         }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(self.imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
