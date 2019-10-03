//
//  CalculatorViewController.swift
//  TipCalculator
//
//  Created by The Swift Guy
// edited by Jasmin Ramirez
//  Copyright © 2019 Jasmin Ramirez . All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var previousNumber:Double=0;
    var performingMath=false
    var operation=0;
    var dictionary:[Int:String] = [12:"/", 13:"x", 14:"-", 15:"+"]
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber=Double(label.text!)!
            
            label.text=dictionary[sender.tag]
            operation = sender.tag
            performingMath=true;
        }
        else if sender.tag == 16{
            
            if operation == 12 {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13 {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14 {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15 {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11{
            label.text = ""
            previousNumber=0;
            numberOnScreen=0;
            operation=0;
        }
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true{
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else{
            label.text=label.text!+String(sender.tag-1)
            numberOnScreen=Double(label.text!)!
        }
        
        
    }
    

}
