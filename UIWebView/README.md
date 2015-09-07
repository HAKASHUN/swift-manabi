# UIWebView

![preview](https://i.gyazo.com/1a1af43c0720829859317bd9ca9f9f06.gif)

## Load Web Page

```swift
let queryUrl = NSURL(string: urlString)
if let queryUrl = queryUrl {
    let req = NSURLRequest(URL: queryUrl)
    _webView.loadRequest(req)
}
```

## インジケータの表出

![image](http://www.objectivec-iphone.com/UIKit/UIApplication/images/networkActivityIndicatorVisible.png)

### 表示

```swift
UIApplication.sharedApplication().networkActivityIndicatorVisible = true
```

### 非表示

```swift
UIApplication.sharedApplication().networkActivityIndicatorVisible = false
```
