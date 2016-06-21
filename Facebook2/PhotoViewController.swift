//
//  PhotoViewController.swift
//  Facebook2
//
//  Created by Omar Siddiqui on 6/19/16.
//  Copyright © 2016 Omar Siddiqui. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var actionsBottomView: UIImageView!
    var photoImage: UIImage!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var selectedImageView: UIImageView!
    
    var imageTransition: ImageTransition!
    var offset: CGPoint!
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 320, height: 1000)
        scrollView.backgroundColor = UIColor(white: 0, alpha: 1)
        
        photoImageView.image = photoImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func tappedDoneButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
 //       selectedImageView = sender.view as! UIImageView
        
        
  //      print("tapped")
        //performSegueWithIdentifier("photoSegue", sender: self)
    }
    
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        
        let offset = scrollView.contentOffset
        print("\(offset.y/10) & \(offset)")
        scrollView.backgroundColor = UIColor(white: 0, alpha: (1 + (CGFloat(offset.y)/100)))
        doneButton.alpha = 1 + (offset.y/100)
        actionsBottomView.alpha = 1 + (offset.y/100)
        
        
    }
    
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
                                  willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
//        print("\(offset)")
        let offset = scrollView.contentOffset
        if offset.y < -50 {
            dismissViewControllerAnimated(true, completion: nil)
        } else {
            doneButton.alpha = 1
            actionsBottomView.alpha = 1
        }
        
    }
    
   
    
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        var feedViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        feedViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        imageTransition = ImageTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        feedViewController.transitioningDelegate = imageTransition
        
        // Adjust the transition duration. (seconds)
        imageTransition.duration = 1.0
        
        
    }
    

}
