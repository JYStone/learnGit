//
//  HomeLightAppListCell.swift
//  JTMDM
//
//  Created by 南天 on 2020/8/3.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

let LightAppCellID = NSStringFromClass(LightAppCell.classForCoder())
class HomeLightAppListCell: UITableViewCell {

    var collectionView: UICollectionView?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize(width: (AppFrame.ScreenWidth > AppFrame.ScreenHeight ? AppFrame.ScreenHeight : AppFrame.ScreenWidth)/4, height: 80)
        layout.sectionInset = UIEdgeInsets.zero
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0

        NSLog(self.contentView.frame.size.height)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.white
        collectionView.register(LightAppCell.self, forCellWithReuseIdentifier: LightAppCellID)
        collectionView.delegate = self
        collectionView.dataSource = self
        self.contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalToSuperview()
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeLightAppListCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LightAppCellID, for: indexPath)
        cell.contentView.backgroundColor = UIColor.white
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        NSLog(indexPath.row)
    }
    

//    // 定义每一个cell的大小
//   func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout:UICollectionViewLayout, sizeForItemAt indexPath:IndexPath) ->CGSize {
//       return CGSize(width: UIScreen.main.bounds.size.width/4, height:  UIScreen.main.bounds.size.width/4);
//   }
//
//   // 定义每个Section的四边间距
//   func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout:UICollectionViewLayout, insetForSectionAt section:Int) ->UIEdgeInsets {
//       return UIEdgeInsets(top: 0,left: 0,bottom: 0,right: 0);
//   }
//
//   // 两行cell之间的间距
//   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//       return 0;
//   }
//
//   // 两列cell之间的间距
//   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//       return 0;
//   }

}
