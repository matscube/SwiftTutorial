//
//  ViewController.swift
//  PageTransitionWithStoryBoard
//
//  Created by TakanoriMatsumoto on 2014/12/15.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var label = UILabel()
        label.text = "FirstViewController"
        label.textAlignment = NSTextAlignment.Center
        label.frame = CGRectMake(0, 0, self.view.frame.width, 50)
        label.center = CGPointMake(self.view.frame.width / 2, 200)
        self.view.addSubview(label)
        
        var button = UIButton()
        button.frame = CGRectMake(0, 0, 100, 50)
        button.setTitle("Push", forState: UIControlState.Normal)
        button.center = CGPointMake(self.view.frame.width / 2, 300)
        button.backgroundColor = UIColor(red: 0xFF/255, green: 0x43/255, blue: 0x51/255, alpha: 1)
        button.addTarget(self, action: "push", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func push() {
        self.performSegueWithIdentifier("PushToSecondSegue", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

