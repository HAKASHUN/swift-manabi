//
//  ViewController.swift
//  AlamofireSample
//
//  Created by 袴田 俊輔 on 2015/09/09.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Alamofire_SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(.GET, "http://httpbin.org/get")
            .responseSwiftyJSON({ (request, response, json, error) in
                println(json)
            })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

