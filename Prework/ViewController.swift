//
//  ViewController.swift
//  Prework
//
//  Created by Genesis Smothers on 1/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billAmountTextField: UITextField!
    @IBOutlet var tipAmountLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    @IBOutlet var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func caculateTip(_ sender: Any)
    {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        //Get Total by multiplying tip and tip percentage
        let tipPercentages  = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)

    }

}

