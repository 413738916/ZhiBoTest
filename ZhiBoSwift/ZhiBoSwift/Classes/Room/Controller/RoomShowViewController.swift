//
//  RoomShowViewController.swift
//  ZhiBoSwift
//
//  Created by 123 on 2017/11/2.
//  Copyright © 2017年 ct. All rights reserved.
//

import UIKit

class RoomShowViewController: UIViewController {
    
    lazy var gobtn : UIButton = {
        let gobtn = UIButton(frame: CGRect(x: 25, y: 25, width: 200, height: 200))
        gobtn.setTitle("你好", for: .normal)
        gobtn.setTitleColor(UIColor.red, for: .normal)
        
        return gobtn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.green
        gobtn.addTarget(self, action: #selector(gobackto), for: .touchUpInside)
        view.addSubview(gobtn)
        
    }
    
   @objc private func gobackto() {
    
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
