//
//  ViewController.swift
//  XtiPhoneApp
//
//  Created by Mac on 16/4/13.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.cyanColor()
        navigationItem.title = "主页"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "Left", style: UIBarButtonItemStyle.Plain, target: self, action: "leftViewAction")
        
    }
    func leftViewAction()
    {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.drawer.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

