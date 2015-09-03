//
//  MyTabBarController.swift
//  TabPage3
//
//  Created by 袴田 俊輔 on 2015/09/03.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let thirdTabBarItem = (tabBar.items![2] as! UITabBarItem)
        thirdTabBarItem.badgeValue = "New"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // tabBarで選択した際の処理
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem!) {
        println(item.title)
        if item.title == "Third" {
          item.badgeValue = nil
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
