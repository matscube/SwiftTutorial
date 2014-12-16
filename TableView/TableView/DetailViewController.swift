//
//  DetailViewController.swift
//  TableView
//
//  Created by TakanoriMatsumoto on 2014/12/17.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var section: Int?
    var row: Int?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var label = UILabel()
        label.frame = CGRectMake(0, 0, self.view.frame.width, 50)
        label.center = CGPointMake(self.view.frame.width / 2, self.view.frame.height / 2)
        label.text = "Section: \(section!), Row: \(row!)"
        label.textAlignment = NSTextAlignment.Center
        self.view.addSubview(label)
        
        var button = UIButton()
        button.frame = CGRectMake(0, 0, 100, 50)
        button.setTitle("Back", forState: UIControlState.Normal)
        button.center = CGPointMake(self.view.frame.width / 2, 300)
        button.backgroundColor = UIColor(red: 0xFF/255, green: 0x43/255, blue: 0x51/255, alpha: 1)
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
