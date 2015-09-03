# TabPage3(やっとタブ使ってページ遷移してみた)

![preview](https://i.gyazo.com/a4056a8c0117342b770bee1b7cde4bd9.gif)

## storyboard

![storyboard](https://cloud.githubusercontent.com/assets/1150412/9651528/fb82cafe-524c-11e5-96d3-85df7d6de3be.png)

##　MyTabBarController

- タブUIのコントローラを定義

```swift
import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 3番目のタブメニューにNewのバッジをつける
        let thirdTabBarItem = (tabBar.items![2] as! UITabBarItem)
        thirdTabBarItem.badgeValue = "New"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // tabBarでメニューを選択した際の処理
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem!) {
        println(item.title)
        if item.title == "Third" {
          item.badgeValue = nil
        }
    }

}
```