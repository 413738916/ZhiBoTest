//
//  NetworkTools.swift
//  Alamofire安装
//
//  Created by 123 on 2017/10/27.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

import Alamofire
import Kingfisher

enum MethodType{
    case get
    case post
}

class NetworkTools {
    
    class func downLoadImg(_ urlS : String, placeholder : String? = nil,imgView : UIImageView) -> () {
        
         guard let iconURL = URL(string: urlS) else { return }
        imgView.kf.setImage(with: iconURL)
    }

    class func requestData (_ type : MethodType, URLString : String, parameters : [String : Any]? = nil, finishedCallback : @escaping (_ result : Any) -> ()) {
        
        // 1.获取类型
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        
        // 2.发送网络请求
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON(completionHandler: { (response) in
           
            // 3.获取结果
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            
            // 4.将结果回调出去
            finishedCallback(result)
            
        })
    }
    
}
