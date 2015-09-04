//
//  ViewController.swift
//  SceneChange
//
//  Created by 袴田 俊輔 on 2015/09/04.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // call segue
        self.performSegueWithIdentifier("toSecondScene", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case .Some("toSecondScene"):
            let dest = segue.destinationViewController as! UIViewController
            dest.view.backgroundColor = UIColor.greenColor()
        default:
            break
        }
    }


}

