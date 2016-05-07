//
//  ViewController.swift
//  Click Counter
//
//  Created by Steve Henderson on 2016-05-04.
//  Copyright © 2016 Steve Henderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label
        self.label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(self.label)
        
        // button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        
        var bgcolorbutton = UIButton()
        bgcolorbutton.frame = CGRectMake(150, 350, 60, 60)
        bgcolorbutton.setTitle("click", forState: .Normal)
        bgcolorbutton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(bgcolorbutton)
        
        bgcolorbutton.addTarget(self, action: "changeBgColor", forControlEvents: .TouchUpInside)
        button.addTarget(self, action: "incrementCount", forControlEvents: .TouchUpInside)
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func changeBgColor() {
        self.view.backgroundColor = UIColor.redColor()
    }

}

