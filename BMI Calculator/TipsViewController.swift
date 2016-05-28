//
//  TipsViewController.swift
//  BMII Calculator
//
//  Created by Vishnu R Menon on 20/5/16.
//  Copyright © 2016 Vishnu R Menon. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func nextTip(sender: UIButton) {
        hideTip()
    }
    
    func hideTip() {
        UIView.animateWithDuration(0.5,
                                   animations: {
                                    self.titleLabel.alpha = 0
                                    self.contentLabel.alpha = 0
                                    self.imageView.alpha = 0
            },
                                   completion: {
                                    finished in self.showTip()
            }
        )
    }
    
    
    // This function runs after the animation in hideTip() is done.
    // We'll first set the label and images, then re-animate them back to be visible.
    func showTip() {
        titleLabel.text = "For healthy teeth, don't brush after eating"
        contentLabel.text = "Don't brush your teeth immediately after meals and drinks, especially if they were acidic. Wait 30 to 60 minutes before brushing."
        imageView.image = UIImage(named:"teeth.jpg")
        UIView.animateWithDuration(0.5,
                                   animations: {
                                    self.titleLabel.alpha = 1
                                    self.contentLabel.alpha = 1
                                    self.imageView.alpha = 1
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "Drink coffee to have a better nap"
        contentLabel.text = "Why does this work? A 20-minute nap ends just as the caffeine kicks in and clears the brain of a molecule called adenosine, maximizing alertness."
        imageView.image = UIImage(named: "coffee.jpg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
