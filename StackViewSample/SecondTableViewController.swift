//
//  SecondTableViewController.swift
//  StackViewSample
//
//  Created by 住田祐樹 on 2017/04/04.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit

class SecondTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self

        let nib = UINib(nibName: "CustomCell", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "cell")
        
        table.estimatedRowHeight = 20
        table.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomCell
        
        return cell
    }
}
