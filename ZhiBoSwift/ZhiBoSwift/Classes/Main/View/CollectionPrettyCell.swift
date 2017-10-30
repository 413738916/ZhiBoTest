//
//  CollectionPrettyCell.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/10/27.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

class CollectionPrettyCell: CollectionBaseCell {

    @IBOutlet weak var cityBtn: UIButton!
    
    override var anchor : AnchorModel? {
        didSet {
            super.anchor = anchor
            
            cityBtn.setTitle(anchor?.anchor_city, for: UIControlState())
        }
    }

}
