//
//  FirstSegue.swift
//  SegueTransion
//
//  Created by BourneWeng on 15/7/14.
//  Copyright (c) 2015年 Bourne. All rights reserved.
//

import UIKit

class FirstSegue: UIStoryboardSegue {
   
    override func perform() {
        var firstVCView = self.sourceViewController.view as UIView!
        var secondVCView = self.destinationViewController.view as UIView!
        
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        secondVCView.frame = CGRectMake(0.0, screenHeight, screenWidth, screenHeight)
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(secondVCView, aboveSubview: firstVCView)
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
                secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, -screenHeight)
            }) { (finished: Bool) -> Void in
                self.sourceViewController.presentViewController(self.destinationViewController as! UIViewController,
                    animated: false,
                    completion: nil)
        }
    }
}
