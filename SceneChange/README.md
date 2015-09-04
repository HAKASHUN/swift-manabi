# SceneChange

- initial viewが表示されたら、別のviewに遷移する


![preview](https://i.gyazo.com/bbc30436fcddccb317d2150b103b80bf.gif)

## プログラムでsegueを呼び出して遷移する

```swift
override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)

    // toSecondSceneセグエを呼び出して実行
    self.performSegueWithIdentifier("toSecondScene", sender: self)
}

```

## 遷移前に実行する処理を挟む

```swift
override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    switch segue.identifier {
        // "toSecondScene"は背景を緑色にしてから遷移する
        case .Some("toSecondScene"):
            let dest = segue.destinationViewController as! UIViewController
            dest.view.backgroundColor = UIColor.greenColor()
        default:
            break
    }
}
```

### switch文での値評価に`Optional.Some(値)`を用いている

- [Swift: testing against optional value in switch case](http://stackoverflow.com/questions/26941529/swift-testing-against-optional-value-in-switch-case)
- [SwiftのOptionalはただのenum?](http://qiita.com/koher/items/5dd6ce7427e7ecff4249)
- segue別に処理を分ける際のベストプラクティスかな？