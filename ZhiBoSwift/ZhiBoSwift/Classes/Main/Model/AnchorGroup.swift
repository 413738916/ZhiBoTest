//
//  AnchorGroup.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/10/30.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

class AnchorGroup: NSObject {

    /// 该组中对应的房间信息
    var room_list : [[String : NSObject]]? {
        didSet {
            guard let room_list = room_list else { return }
            for dict in room_list {
                anchors.append(AnchorModel(dict: dict))
            }
        }
    }

    // MARK:- 定义属性
    var tag_name : String = ""
    var icon_url : String = ""
    
    /// 组显示的图标
    var icon_name : String = "home_header_normal"
    
    /// 定义主播的模型对象数组
    lazy var anchors : [AnchorModel] = [AnchorModel]()
    
    override init() {
        
    }
    
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
    }
    
}








