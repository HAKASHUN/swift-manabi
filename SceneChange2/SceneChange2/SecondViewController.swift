//
//  SecondViewController.swift
//  SceneChange2
//
//  Created by 袴田 俊輔 on 2015/09/04.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func closeBtnDidPush(sender: SecondViewController)
}

class SecondViewController: UIViewController {

    var delegate: SecondViewControllerDelegate?

    // 閉じるボタンが押された時
    @IBAction func btnDidPush(sender: UIBarButtonItem) {
        self.delegate?.closeBtnDidPush(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
