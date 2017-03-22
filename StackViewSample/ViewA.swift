//
//  ViewA.swift
//  StackViewSample
//
//  Created by Yuki Sumida on 2017/03/20.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit

class ViewA: UIView {
    @IBOutlet weak var label: UILabel!
    
    private var preText: String = ""
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
    }

    func loadView() {
        let className = NSStringFromClass(type(of: self))
        let bundle = Bundle(for: type(of: self))
        let nibName = className.components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        
        // カスタムViewのサイズを自分自身と同じサイズにする
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|",
            options:NSLayoutFormatOptions(rawValue: 0),
            metrics:nil,
            views: bindings))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|",
            options:NSLayoutFormatOptions(rawValue: 0),
            metrics:nil,
            views: bindings))
    }

    @IBAction func tapButton(_ sender: Any) {
        if self.label.numberOfLines == 0 {
            self.label.numberOfLines = 5
        }
        else {
            self.label.numberOfLines = 0
        }
    }

    override func layoutSubviews() {
        label.preferredMaxLayoutWidth = self.label.frame.width
    }
}
