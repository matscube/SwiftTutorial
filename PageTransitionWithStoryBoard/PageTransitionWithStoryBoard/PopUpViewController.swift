//
//  PopUpViewController.swift
//  PageTransitionWithStoryBoard
//
//  Created by TakanoriMatsumoto on 2014/12/15.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        var label = UILabel()
        label.text = "PopUpViewController"
        label.frame = CGRectMake(0, 0, self.view.frame.width, 50)
        label.textAlignment = NSTextAlignment.Center
        label.center = CGPointMake(self.view.frame.width / 2, 200)
        self.view.addSubview(label)
        
        var button = UIButton()
        button.frame = CGRectMake(0, 0, 100, 50)
        button.setTitle("Close", forState: UIControlState.Normal)
        button.center = CGPointMake(self.view.frame.width / 2, 300)
        button.backgroundColor = UIColor(red: 0xFE/255, green: 0xAF/255, blue: 0x1E/255, alpha: 1)
        button.addTarget(self, action: "dismiss", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }

    func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
