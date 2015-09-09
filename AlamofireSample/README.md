# AlamofireSample

- Alamofireを使って通信処理をシンプルに
- SwiftyJSONを用いてJSON結果をハンドリング

## Podfile

- `Alamofire-SwiftyJSON`がswift2.0のコードになってしまってるので、swift2.0対応以前のコミットから取り出してきました

```
platform :ios, '8.0'
use_frameworks!

target 'AlamofireSample' do
  pod 'Alamofire'
  pod 'SwiftyJSON'
  pod 'Alamofire-SwiftyJSON', :git => "https://github.com/SwiftyJSON/Alamofire-SwiftyJSON.git", :commit => 'e9d4acdc306fd68a7193e8df8120928900649ff6'
end
```

## usage

```swift
import UIKit
import Alamofire
import SwiftyJSON
import Alamofire_SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // AlamofireでGET
        Alamofire.request(.GET, "http://httpbin.org/get")
            .responseSwiftyJSON({ (request, response, json, error) in
                println(json)
            })
    }

    ...
}
```