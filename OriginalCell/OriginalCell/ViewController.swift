//
//  ViewController.swift
//  OriginalCell
//
//  Created by 袴田 俊輔 on 2015/09/03.
//  Copyright (c) 2015年 HAKASHUN. All rights reserved.
//

import UIKit

struct CafeData {
    
    var text: Text
    var image: Image
    
    enum Text: String {
        case starbucks = "スターバックス"
        case doutor = "ドトール"
        case excelsior = "エクセルシオール"
    }
    enum Image: String {
        case starbucks = "starbucks.jpg"
        case doutor = "doutor.jpg"
        case excelsior = "excelsior.jpg"
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var list: [CafeData] = [CafeData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // add data
        var starbucks = CafeData(text: .starbucks, image: .starbucks)
        var doutor = CafeData(text: .doutor, image: .doutor)
        var excelsior = CafeData(text: .excelsior, image: .excelsior)
    
        list.append(starbucks)
        list.append(doutor)
        list.append(excelsior)
        
        // create table view
        let tableView: UITableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped)
        self.view.addSubview(tableView)
        
        // delegate & datasource
        tableView.delegate = self
        tableView.dataSource = self

        // use TableViewCell
        let xib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.registerNib(xib, forCellReuseIdentifier: "Cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // identifierが"Cell"のものを使い回す
        let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        let cafeData: CafeData = list[indexPath.row]

        let imageName = cafeData.image.rawValue
        let name = cafeData.text.rawValue
        
        cell.cellImage.image = UIImage(named: imageName)
        cell.cellLabel.text = name
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        return cell.bounds.height
    }

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "今日行くカフェ"
    }
    
}

