//
//  test1ViewController.swift
//  Facebook2
//
//  Created by Omar Siddiqui on 6/19/16.
//  Copyright © 2016 Omar Siddiqui. All rights reserved.
//

import UIKit

class test1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func tappedTestTapGestureRecognizer(sender: UITapGestureRecognizer) {
        
        print("tappedtest")
        
        performSegueWithIdentifier("testSegue", sender: self)
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
