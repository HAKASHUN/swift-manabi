//
//  ViewController.swift
//  WebPageList
//
//  Created by 袴田 俊輔 on 2015/09/03.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    // リストから渡されるWebSiteのデータ
    var detailItem: WebSite? {
        didSet {
            self.configureView()
        }
    }
    
    @IBOutlet weak var webView: UIWebView!
    
    func configureView() {
        if let webData: WebSite = self.detailItem {
            if let url = NSURL(string: webData.url), let webViewInstance = self.webView {
                let urlReq = NSURLRequest(URL: url)
                webViewInstance.loadRequest(urlReq)                
            }
        }
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.webView.delegate = self;
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

