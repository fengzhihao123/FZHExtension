//
//  ViewController.swift
//  FZHExtension
//
//  Created by fzh5387796@gmail.com on 08/30/2018.
//  Copyright (c) 2018 fzh5387796@gmail.com. All rights reserved.
//

import UIKit
import FZHExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let date = Date()
        print(date.fzh_yesterday)
    }
}

