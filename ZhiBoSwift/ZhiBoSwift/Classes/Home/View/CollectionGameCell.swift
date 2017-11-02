//
//  CollectionGameCell.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/10/31.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

class CollectionGameCell: UICollectionViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: 定义模型属性
    var baseGame : BaseGameModel? {
        didSet {
            titleLabel.text = baseGame?.tag_name
    
            let iconStr = baseGame?.icon_url
            if  iconStr == ""  {
                iconImageView.image = UIImage(named: "home_more_btn")

            } else {
                NetworkTools.downLoadImg(iconStr!, imgView: iconImageView)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
