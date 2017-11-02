//
//  CollectionCycleCell.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/10/31.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

class CollectionCycleCell: UICollectionViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
   
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: 定义模型属性
    var cycleModel : CycleModel? {
        didSet {
            titleLabel.text = cycleModel?.title
            
            NetworkTools.downLoadImg(cycleModel?.pic_url ?? "", imgView: iconImageView)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
