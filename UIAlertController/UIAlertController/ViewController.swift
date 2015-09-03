//
//  ViewController.swift
//  UIAlertController
//
//  Created by 袴田 俊輔 on 2015/09/03.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func showAlert(sender: UIButton) {
        
        // アラートインスタンス作成
        let alert = UIAlertController(
            title: "タイトル",
            message: "メッセージ",
            preferredStyle: UIAlertControllerStyle.Alert
        )
        
        // 閉じるボタンUIを追加
        alert.addAction(UIAlertAction(
            title: "閉じる",
            style: UIAlertActionStyle.Default,
            handler: nil))
        
        // 画面に表示する
        self.presentViewController(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

