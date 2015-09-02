# UITableView

![preview](https://i.gyazo.com/b4b2c7dd852b1f3b9bdfc2cabc81365a.gif)

### 表示するリストはString型の配列で定義

```swift
let myList:[String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
```

### UITableViewのデリゲート

```swift
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

...

    override func viewDidLoad() {
        super.viewDidLoad()

        // delegate
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
    }
```

### プロトコルで指定された実装を定義

```swift
// セルの数を返す
func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return myList.count
}

func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "alphabet")

    if var textLabel = cell.textLabel, var detailTextLabel = cell.detailTextLabel {
        textLabel.text = myList[indexPath.row]
        detailTextLabel.text = myList[indexPath.row].lowercaseString
    }

    return cell
}
```