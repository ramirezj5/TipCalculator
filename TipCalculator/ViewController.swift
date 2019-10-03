//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jasmin Ramirez  on 10/1/19.
//  Copyright © 2019 Jasmin Ramirez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var finalTotal: UILabel!

    
    // Called outlets refer to elements in the screen that you may want to configure
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    
    // Actions
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billAmount.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update the tip and total labels
        
        tipLabel.text = String(format: "$%.2f",tip)
        finalTotal.text = String(format: "$%.2f",total)
        
    }

    
    
}

