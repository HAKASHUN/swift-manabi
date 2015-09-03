//
//  ViewController.swift
//  ActionSheet
//
//  Created by 袴田 俊輔 on 2015/09/03.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showActionSheet(sender: UIButton) {
        // アクションシート作成
        let actionSheet: UIAlertController = UIAlertController(title: "タイトル", message: "メッセ〜ジ", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "アクション1", style: UIAlertActionStyle.Default, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "アクション2", style: UIAlertActionStyle.Cancel, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "アクション3", style: UIAlertActionStyle.Destructive, handler: nil))
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
    
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

