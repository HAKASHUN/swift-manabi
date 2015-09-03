# ActionSheet

![preview](https://i.gyazo.com/b2fa80260b3e6251b0ce14d6b6d7d9ef.gif)

```swift
@IBAction func showActionSheet(sender: UIButton) {
    // アクションシート作成
    let actionSheet: UIAlertController = UIAlertController(title: "タイトル", message: "メッセ〜ジ", preferredStyle: UIAlertControllerStyle.ActionSheet)

    actionSheet.addAction(UIAlertAction(title: "アクション1", style: UIAlertActionStyle.Default, handler: nil))
    actionSheet.addAction(UIAlertAction(title: "アクション2", style: UIAlertActionStyle.Cancel, handler: nil))
    actionSheet.addAction(UIAlertAction(title: "アクション3", style: UIAlertActionStyle.Destructive, handler: nil))

    self.presentViewController(actionSheet, animated: true, completion: nil)

}
```