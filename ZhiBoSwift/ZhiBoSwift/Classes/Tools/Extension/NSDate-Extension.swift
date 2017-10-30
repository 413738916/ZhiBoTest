//
//  NSDate-Extension.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/10/30.
//  Copyright © 2017年 ct. All rights reserved.
//

import Foundation

extension Date {
    
    static func getCurrentTime() -> String {
        let nowDate = Date()
        
        let interval = Int(nowDate.timeIntervalSince1970)
        
        return "\(interval)"
    }
 
}
