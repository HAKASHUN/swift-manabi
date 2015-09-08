# SwiftCocoaPod

- CocoaPodをswiftプロジェクトで使ってみました。
- 使うライブラリは、[MBProgressHUD](https://github.com/jdg/MBProgressHUD)

![preview](https://i.gyazo.com/5d19ecb462f72ef6027bbc947bc09b14.gif)

## Podfile

```
platform :ios, '8.0'
use_frameworks!

target 'SwiftCocoaPod' do
  pod 'MBProgressHUD', '~> 0.9.1'
end
```

## install library

```bash
$pod install
```

## Bridging Headerの作成

- [iOS - Swift で CocoaPods を使う方法](http://kzy52.com/entry/2015/03/21/173538)を参考にしました。

## ライブラリを使ってみる

```swift
//
//  ViewController.swift
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // MBProgressHUDのLoadingアニメーションを追加
        MBProgressHUD.showHUDAddedTo(self.view, animated:true)
    }

    ...
}

```
