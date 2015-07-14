//
//  FirstUnwindSegue.swift
//  SegueTransion
//
//  Created by BourneWeng on 15/7/14.
//  Copyright (c) 2015年 Bourne. All rights reserved.
//

import UIKit

class FirstUnwindSegue: UIStoryboardSegue {
    override func perform() {
        // Assign the source and destination views to local variables.
        var firstVCView = self.sourceViewController.view as UIView!
        var secondVCView = self.destinationViewController.view as UIView!
        
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.addSubview(secondVCView)
        window?.addSubview(firstVCView)
        secondVCView.frame = firstVCView.frame
        
        // Animate the transition.
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
                firstVCView.frame = CGRectOffset(firstVCView.frame, 0.0, screenHeight)
            }) { (finished: Bool) -> Void in
                self.sourceViewController.dismissViewControllerAnimated(false, completion: nil)
        }
    }
}
