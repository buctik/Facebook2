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

    var imageTransition: ImageTransition!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var homeFeed: UIImageView!
    
    var selectedImageView: UIImageView!
    
    
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
        print("6")
        let photoViewController = segue.destinationViewController as! PhotoViewController
        
        photoViewController.photoImage = selectedImageView.image
        /*
        // Set the modal presentation style of your destinationViewController to be custom.
        photoViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
                print("3")
         Create a new instance of your fadeTransition.
        imageTransition = ImageTransition()
                print("2")
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        photoViewController.transitioningDelegate = imageTransition
                print("1")
        // Adjust the transition duration. (seconds)
        imageTransition.duration = 0.35*/
        
    }
    

}
