//
//  ViewController.swift
//  SwiftOnJavascript
//
//  Created by 袴田 俊輔 on 2015/09/07.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var _webView: UIWebView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self._webView.delegate = self
        if let targetUrl = NSBundle.mainBundle().pathForResource("index", ofType: "html") {
            self.loadRequest(targetUrl)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadRequest(urlString: String) {
        let queryUrl = NSURL(string: urlString)
        if let queryUrl = queryUrl {
            let req = NSURLRequest(URL: queryUrl)
            _webView.loadRequest(req)
        }
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        if let url = request.URL,
            components = NSURLComponents(URL: url, resolvingAgainstBaseURL: false),
            scheme = components.scheme,
            host = components.host,
            items = components.queryItems as? [NSURLQueryItem] {
                if scheme == "native" {
                    self.executeCommand(host, items: items)
                }
        }
        
        return true
    }

    func executeCommand(cmd: String, items: [NSURLQueryItem]) {
        switch cmd {
        case "command":
            if let arg = items.filter({item in item.name == "arg"}).first?.value,
                callback = items.filter({item in item.name == "callback"}).first?.value {
                // ラベルのテキストをjavascript側から受け渡した値に変更
                label.text = arg
                // swiftからjavascriptを実行する
                if let ret = _webView.stringByEvaluatingJavaScriptFromString("\(callback)('\(arg)')") {
                    println(ret)
                }
            }
        default:
            break
        }
    }
    
}

