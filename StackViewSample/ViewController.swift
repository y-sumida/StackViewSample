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
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var viewC: UIView!

    //@IBOutlet weak var alabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        //alabel.preferredMaxLayoutWidth = self.view.frame.width
        bLabel.preferredMaxLayoutWidth = self.view.frame.width
        cLabel.preferredMaxLayoutWidth = self.view.frame.width

        //alabel.text = "aLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabelaLabel"

        bLabel.text = "bLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabelbLabel"

        cLabel.text = "cLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabelcLabel"
    }

    override func viewDidLayoutSubviews() {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

