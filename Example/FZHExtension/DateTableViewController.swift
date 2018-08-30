//
//  DateTableViewController.swift
//  FZHExtension_Example
//
//  Created by 冯志浩 on 2018/8/30.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit
import FZHExtension

class DateModel {
    var title = ""
    var value = ""
}

class DateTableViewController: UITableViewController {

    var dataSource = [DateModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDataSource()
    }
    
    func setupDataSource() {
        let currentDate = Date()
        
        let titles = ["fzh_yesterday", "fzh_tomorrow", "fzh_isWeekend", "fzh_weekday"]
        let values = [currentDate.fzh_yesterday, currentDate.fzh_tomorrow, currentDate.fzh_isWeekend, currentDate.fzh_weekday(withPrefix: "周")] as [Any]
        for index in titles.indices {
            let model = DateModel()
            model.title = titles[index]
            model.value = "|\(values[index])"
            dataSource.append(model)
        }
        
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "reuseIdentifier")
        cell.textLabel?.text = dataSource[indexPath.row].title
        cell.detailTextLabel?.text = dataSource[indexPath.row].value
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
