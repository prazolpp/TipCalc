//
//  ViewController.swift
//  TipCalc
//
//  Created by Prajwal Pyakurel on 12/18/19.
//  Copyright © 2019 Prajwal Pyakurel. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

   
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill amount
        
        
        let bill = Double(billField.text!) ?? 0
        
         //Calculate bill and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        
        let total = bill + tip;
       
        //Update bill and total
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

