//
//  ViewController.swift
//  Click Counter
//
//  Created by Steve Henderson on 2016-05-04.
//  Copyright © 2016 Steve Henderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        
        // button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
    }

}

