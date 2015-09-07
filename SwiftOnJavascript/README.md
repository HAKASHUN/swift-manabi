# SwiftOnJavascript

- javascriptからswiftのコードを実行する
- javascriptでswiftに渡した値に、左下のラベルテキストを変更
- javascriptで定義されたコールバック関数をswift側から実行(alertを表示)

![preview](https://i.gyazo.com/6b72b1a4b89ffad6fe6e73ce84850b78.gif)

## html側のコード

```html
<html>
<head>
    <title>SwiftOnJavascript</title>
</head>
<body>
<h1>SwiftOnJavascript</h1>
<button id="trigger">Push</button>
<script>
    var btn = document.getElementById('trigger');

    // SwiftOnJavascriptを値としてswiftに引き渡す
    btn.addEventListener('touchend', function() {
       location.href = [
           'native://command?arg=',
           encodeURI('SwiftOnJavascript!!!'),
           '&callback=callbackFunc'
       ].join('');
    });

    // swiftで処理が終わったら実行される処理
    function callbackFunc(msg) {
        return alert(msg)
    }
</script>
</body>
</html>
```

## storyboard

![storyboard](https://cloud.githubusercontent.com/assets/1150412/9714656/52a6e6fe-5594-11e5-8868-02e205938e13.png)
