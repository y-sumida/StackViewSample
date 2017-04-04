//
//  CustomCell.swift
//  StackViewSample
//
//  Created by 住田祐樹 on 2017/04/04.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var customView: CustomView!

    override func awakeFromNib() {
        super.awakeFromNib()

        customView.label.text = "LabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabelLabel"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
