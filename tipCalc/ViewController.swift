//
//  ViewController.swift
//  tipCalc
//
//  Created by Osama Soliman on 1/24/19.
//  Copyright © 2019 Osama Soliman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tipAmountLabel: UILabel!
    
    @IBOutlet var tipControl: UISegmentedControl!
    @IBOutlet var totalAmountTrueLabel: UILabel!
    
    @IBOutlet var totalAmountLabel: UIView!
    
    @IBOutlet var BillTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ontap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [ 0.15, 0.18, 0.20]
        let bill = Double(BillTextField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalAmountTrueLabel.text = String(format: "$%.2f", total)
        
    }
}

