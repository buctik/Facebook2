//
//  ImageTransition.swift
//  Facebook2
//
//  Created by Omar Siddiqui on 6/20/16.
//  Copyright © 2016 Omar Siddiqui. All rights reserved.
//

import UIKit

class ImageTransition: BaseTransition {
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let photoViewController = toViewController as! PhotoViewController
        
        let feedViewController = fromViewController as!FeedViewController
        
        let movingImageView = UIImageView()
        movingImageView.image = feedViewController.selectedImageView.image
        movingImageView.frame = containerView.convertRect(feedViewController.selectedImageView.frame, fromView: feedViewController.selectedImageView.superview)
        movingImageView.contentMode = feedViewController.selectedImageView.contentMode
        
        containerView.addSubview(movingImageView)
        
        photoViewController.photoImageView.alpha = 0
        
        
        
        toViewController.view.alpha = 0
        UIView.animateWithDuration(duration, animations: {
            toViewController.view.alpha = 1
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        fromViewController.view.alpha = 1
        UIView.animateWithDuration(duration, animations: {
            fromViewController.view.alpha = 0
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }


}
