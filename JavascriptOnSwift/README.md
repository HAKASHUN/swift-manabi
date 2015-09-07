# JavascriptOnSwift

- swiftのコードからjavascriptを実行する

![preview](https://i.gyazo.com/89ec84f82599952a1276692fdcba8a78.gif)

- `webViewDidFinishLoad`の引数であるUIWebViewで`stringByEvaluatingJavaScriptFromString`を実行しないと動かなかった
- 何回も実行されてしまう(alertが7回実行されてしまった)

```swift
func webViewDidFinishLoad(webView: UIWebView) {
    if let ret = webView.stringByEvaluatingJavaScriptFromString("alert('swiftからアラートを実行')") {
        println(ret)
    }
}
```
