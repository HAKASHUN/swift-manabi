# UILocalNotification

![preview](https://i.gyazo.com/6d70124172a8ccbde4112bbc2789ea8b.gif)

## ローカルプッシュの許可をとる

<img src="https://cloud.githubusercontent.com/assets/1150412/9729016/056a0052-5647-11e5-8ed7-3c3ba0414620.png" width="300" />

```swift
//
//  AppDelegate.swift
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // アプリケーションが立ち上がった直後に実行される処理
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.

        // 通知の設定を行う
        // 利用したい通知の種類を指定している
        application.registerUserNotificationSettings(
            UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Badge | UIUserNotificationType.Alert, categories: nil)
        )
        return true
    }

    ...

```

## ローカルプッシュの設置

- `UILocalNotification`インスタンスを作成
- 必要なプロパティを設定する
- `application.scheduleLocalNotification()`で設置する

```swift
var notification = UILocalNotification()
notification.alertAction = "アプリに戻る"
notification.alertBody = "新しいイベントが始まるよー"
// 今から10秒後にセットする
notification.fireDate = NSDate(timeIntervalSinceNow: 10)
notification.soundName = UILocalNotificationDefaultSoundName
// アプリのアイコンにバッジをつける
notification.applicationIconBadgeNumber = 1
notification.userInfo = ["notifyId": "sampleNotification"]

// ノティをスケジューリングする
application.scheduleLocalNotification(notification)
```
