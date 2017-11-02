//
//  AmuseViewModel.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/11/1.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

class AmuseViewModel: BaseViewModel {

}

extension AmuseViewModel {
    func loadAmuseData(finishedCallback : @escaping () -> ()) {
        loadAnchorData(isGroupData: true, URLString: "http://capi.douyucdn.cn/api/v1/getHotRoom/2", finishedCallback: finishedCallback)
    }
}
