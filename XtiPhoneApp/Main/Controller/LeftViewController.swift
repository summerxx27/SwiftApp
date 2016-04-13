//
//  LeftViewController.swift
//  XtiPhoneApp
//
//  Created by Mac on 16/4/13.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit
let cellIdentifier: String = "cellId"
class LeftViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        // Do any additional setup after loading the view.
        self.createSubviews()
    }
    func createSubviews()
    {
        tableView = UITableView.init(frame: CGRectMake(0, 64, width * 0.65, height - 128), style: UITableViewStyle.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.view.addSubview(tableView)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 55
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        cell?.textLabel?.text = "test"
        cell?.textLabel?.textColor = UIColor.greenColor()
        cell?.textLabel?.font = UIFont.systemFontOfSize(20)
        // Checkmark 对号,
        cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell!
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch (indexPath.row){
        case 0:
            let centerViewController = ViewController()
            let centerNavigationController = UINavigationController(rootViewController: centerViewController)
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.drawer.centerViewController = centerNavigationController
            appDelegate.drawer.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        default:
            
            let otherViewController = TestViewController()
            let otherNavigationController = UINavigationController(rootViewController: otherViewController)
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.drawer.centerViewController = otherNavigationController
            appDelegate.drawer.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
