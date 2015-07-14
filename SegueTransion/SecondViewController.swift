//
//  SecondViewController.swift
//  SegueTransion
//
//  Created by BourneWeng on 15/7/14.
//  Copyright (c) 2015年 Bourne. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "shouldDismiss:")
        swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }

    @IBAction func shouldDismiss(sender: AnyObject) {
        self.performSegueWithIdentifier("firstSegueUnwind", sender: self)
    }
}
