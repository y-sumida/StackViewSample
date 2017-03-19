//
//  ViewController.swift
//  StackViewSample
//
//  Created by Yuki Sumida on 2017/03/19.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewA: UIView!
    @IBOutlet weak var viewB: UIView!
    @IBOutlet weak var viewC: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 真ん中のビューを非表示にする
        viewB.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

