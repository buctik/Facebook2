//
//  FeedViewController.swift
//  Facebook2
//
//  Created by Omar Siddiqui on 6/19/16.
//  Copyright © 2016 Omar Siddiqui. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UIScrollViewDelegate
{

    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var homeFeed: UIImageView!
    
    var selectedImageView: UIImageView!
//    var imageTransition: ImageTransition!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        scrollView.delegate = self
        scrollView.contentSize = homeFeed.image!.size
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTapPhoto(sender: UITapGestureRecognizer) {
        
        selectedImageView = sender.view as! UIImageView
        
        
        print("tapped")
        performSegueWithIdentifier("photoSegue", sender: self)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let photoViewController = segue.destinationViewController as! PhotoViewController
        
        photoViewController.photoImage = selectedImageView.image
        
    }
    

}
