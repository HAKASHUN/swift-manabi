//
//  ViewController.swift
//  UIWebView
//
//  Created by 袴田 俊輔 on 2015/09/07.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var _webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self._webView.delegate = self
        self.loadRequest("http://www.jubilo-iwata.co.jp/")
    }
    
    // URLをロードする
    func loadRequest(urlString: String) {
        let queryUrl = NSURL(string: urlString)
        
        if let queryUrl = queryUrl {
            let req = NSURLRequest(URL: queryUrl)
            _webView.loadRequest(req)
        
            UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        }
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

