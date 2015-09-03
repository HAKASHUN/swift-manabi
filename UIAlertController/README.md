# UIAlertController

![preview](https://i.gyazo.com/ccc1dfa87c042b8588626929755464f1.gif)

- UIAlertControllerでアラートダイアログを作成
- ボタンなどは、UIAlertActionとして追加していく
- `self.presentViewController`にアラートダイアログを渡すことで、画面に表示する

```swift
@IBAction func showAlert(sender: UIButton) {

    // アラートインスタンス作成
    let alert = UIAlertController(
        title: "タイトル",
        message: "メッセージ",
        preferredStyle: UIAlertControllerStyle.Alert
    )

    // 閉じるボタンUIを追加
    alert.addAction(UIAlertAction(
        title: "閉じる",
        style: UIAlertActionStyle.Default,
        handler: nil)
    )

    // 画面に表示する
    self.presentViewController(alert, animated: true, completion: nil)
}
```