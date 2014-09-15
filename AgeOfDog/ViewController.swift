//
//  ViewController.swift
//  AgeOfDog
//
//  Created by Thomas on 9/14/14.
//  Copyright (c) 2014 Tom Brunkow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    @IBOutlet weak var convertedDogYearsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
    
        let stringFromTextField = humanYearsTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.text = "\(intFromOptional * 7)" + " human years"
        humanYearsTextField.resignFirstResponder()
        
    }
    
    @IBAction func convertToScientificDogYears(sender: UIButton) {
        let humanYearsDouble = Double((humanYearsTextField.text as NSString).doubleValue)
        var dogConversionConstant:Double
        if humanYearsDouble < 2 {
            dogConversionConstant = humanYearsDouble * 10.5
        } else {
            dogConversionConstant = ((humanYearsDouble - 2) * 4) + 21
        }
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.text = "dog years = \(dogConversionConstant)"
        humanYearsTextField.resignFirstResponder()
        
    }
    

}

