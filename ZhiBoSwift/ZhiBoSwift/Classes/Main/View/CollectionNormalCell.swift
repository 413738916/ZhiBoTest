//
//  CollectionNormalCell.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/10/27.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

class CollectionNormalCell: CollectionBaseCell {

    @IBOutlet weak var roomNameLabel: UILabel!
    
    override var anchor : AnchorModel? {
        didSet {
            super.anchor = anchor
            
            roomNameLabel.text = anchor?.room_name
        }
    }
    
}
