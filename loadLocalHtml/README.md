# LoadLocalHtml

- ローカルにHTMLファイルを配置し、ロードする

![preview](https://i.gyazo.com/4dd8adc3f77dc6fe291c5826e0e8ca7b.gif)


## ローカルのHTMLファイルを読み込む

- 下記のように、ワークスペースにhtmlファイルを追加する
    ![preview](https://cloud.githubusercontent.com/assets/1150412/9713049/ebcb4754-5589-11e5-80e6-b5f6f716e138.png)

- 下記のコードのように、ローカルのファイルパスを取得できる

```swift
if let targetUrl = NSBundle.mainBundle().pathForResource("index", ofType: "html") {
    self.loadRequest(targetUrl)
}
```

- ページをロードするロジックは、`http://`などをWebViewで読み込む方法と同じでよい

```swift
let queryUrl = NSURL(string: urlString)
if let queryUrl = queryUrl {
    let req = NSURLRequest(URL: queryUrl)
    _webView.loadRequest(req)
}
```