//
//  ViewController.swift
//  BMII Calculator
//
//  Created by Vishnu R Menon on 17/5/16.
//  Copyright © 2016 Vishnu R Menon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    
    
    @IBAction func calculate(sender: UIButton) {
        if(!weightField.text!.isEmpty && !heightField.text!.isEmpty){
            let bmi = Double(weightField.text!)! / (Double(heightField.text!)! * Double(heightField.text!)!)
            bmiLabel.text = "Your BMI is " + String(format: "Your BMI is %.2f", bmi)
            if (bmi>25 || bmi<30 ){
                subLabel.text = "You are overweight"
            }
            else if(bmi < 18.5) {
                subLabel.text = "You are underweight"
            }
            else {
                subLabel.text = "You are perfect"
            }
        }
        else {
            bmiLabel.text = "Please enter both your height and weight."
                subLabel.text = "No judgement here."
        }
        bmiLabel.hidden = false
        subLabel.hidden = false
//        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
//        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
//        self.presentViewController(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

