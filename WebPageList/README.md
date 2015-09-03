# WebPageList

- WebページのリストからWebViewでそのページを表示する

![preview](https://i.gyazo.com/ad5fa465d9608460fec1e2f92c5ff6d5.gif)

## storyboard

![storyboard](https://cloud.githubusercontent.com/assets/1150412/9650563/d35bc01a-523f-11e5-9962-ced25e7e70d4.png)

## webviewでロードする

```swift
let url = NSURL(string: webData.url)
let urlReq = NSURLRequest(URL: url)
webViewInstance.loadRequest(urlReq)
```

## segue間でのデータの受け渡し

- 今回だとリストのページから、選択したWebサイト情報のデータを受け渡しするところ
- `segue.destinationViewController as! ViewController` 遷移先のViewControllerにキャストするところがまだいまいち掴めていない

```swift
override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // 次に遷移するセグエの特定と、選択したリストのindexPathを取得
    if segue.identifier == "showWebPage", let indexPath = self.tableView.indexPathForSelectedRow() {
        let webSiteData: WebSite = webSiteList[indexPath.row]

        // 遷移先のコントローラを取得
        var senderViewController: ViewController = segue.destinationViewController as! ViewController
        // 遷移先のコントローラのプロパティにセット
        senderViewController.detailItem = webSiteData
    }
}
```