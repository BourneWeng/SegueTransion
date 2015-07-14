//
//  FirstViewController.swift
//  SegueTransion
//
//  Created by BourneWeng on 15/7/14.
//  Copyright (c) 2015年 Bourne. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIViewControllerTransitioningDelegate {

    private var percentDrivenTransition: UIPercentDrivenInteractiveTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "showSecondViewController")
        swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    func showSecondViewController() {
        self.performSegueWithIdentifier("firstSegue", sender: self)
    }
    
    @IBAction func returnFromSegueActions(sender: UIStoryboardSegue){ }
    
    override func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue {
        
        if identifier == "firstSegueUnwind" {
            return FirstUnwindSegue(identifier: identifier, source: fromViewController, destination: toViewController, performHandler: { () -> Void in
            })
        }
        
        return super.segueForUnwindingToViewController(toViewController, fromViewController: fromViewController, identifier: identifier)
    }
    
}
