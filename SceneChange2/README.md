# SceneChange2(segueなしでモーダル遷移)

![preview](https://i.gyazo.com/fe059befaa0f2885dd59d7890b61635d.gif)

## StoryBoard

![storyboard](https://cloud.githubusercontent.com/assets/1150412/9676583/f6a78fa8-5308-11e5-83e7-d787f1724620.png)

- segueなし

## モーダル表示状態で、戻るボタンを実装することを義務付ける

- モーダルとして表示するViewにDelegateプロトコルを作成する
    - `closeBtnPush`メソッドの実装をモーダルを呼び出す側のViewControllerに義務付ける
