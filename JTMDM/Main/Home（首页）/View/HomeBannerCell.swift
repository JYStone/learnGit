//
//  HomeBannerCell.swift
//  JTMDM
//
//  Created by 南天 on 2020/7/31.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

let GXCellID = NSStringFromClass(GXBannerTestCell.classForCoder())
class HomeBannerCell: UITableViewCell {

    private var banner: GXBanner = {
        let width = UIScreen.main.bounds.size.width
        let frame: CGRect = CGRect(x: 0, y: 0, width: width, height: 105)
        return GXBanner(frame: frame, margin: 0, minScale: 1.0)
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style,reuseIdentifier:reuseIdentifier)
        self.contentView.addSubview(self.banner)
        self.banner.backgroundColor = UIColor.white
        self.banner.autoTimeInterval = 3.0
        self.banner.dataSource = self
        self.banner.delegate = self
        self.banner.register(GXBannerTestCell.self, forCellWithReuseIdentifier: GXCellID)
        self.banner.reloadData()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeBannerCell: GXBannerDataSource, GXBannerDelegate {
    func numberOfItems() -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: GXBannerTestCell = collectionView.dequeueReusableCell(withReuseIdentifier: GXCellID, for: indexPath) as! GXBannerTestCell
        cell.contentView.backgroundColor = UIColor.white
        cell.imageView.image = UIImage.init(named: "banner"+String(indexPath.row))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}


