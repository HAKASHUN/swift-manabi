//
//  ViewController.swift
//  SwiftCocoaPod
//
//  Created by 袴田 俊輔 on 2015/09/08.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MBProgressHUDのLoadingアニメーションを追加
        MBProgressHUD.showHUDAddedTo(self.view, animated:true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

