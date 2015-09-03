# OriginalCell

![preview](https://cloud.githubusercontent.com/assets/1150412/9653887/a7ecaddc-5261-11e5-9916-726e5d78baf7.png)

## セルの高さにリストを合わせる

```swift
func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
    return cell.bounds.height
}
```
