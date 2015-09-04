//
//  ViewController.swift
//  SceneChange2
//
//  Created by 袴田 俊輔 on 2015/09/04.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if let modal = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as? SecondViewController {
            modal.modalTransitionStyle = .CrossDissolve
            modal.modalPresentationStyle = .FullScreen
            modal.view.backgroundColor = UIColor.blueColor()
            
            modal.delegate = self
            
            self.presentViewController(modal, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func closeBtnDidPush(sender: SecondViewController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}

