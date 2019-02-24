//
//  ViewController.swift
//  Tip Calculator Tutorial
//
//  Created by Julie Berry on 2/12/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // OUTLETS
    
    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var txtCostTextOUTLET: UITextField!
    @IBOutlet weak var lblSliderValueLabelOUTLET: UILabel!
    @IBOutlet weak var sldTipAmountSliderOUTLET: UISlider!
    @IBOutlet weak var btnCalculateButtonOUTLET: UIButton!
    @IBOutlet weak var lblTotalCostLabelOUTLET: UILabel!
    
    // VARIABLES
    
    @IBOutlet weak var lblBtnBG: UILabel!
    var totalCost : Double?
    var tipAmount : Double?
//    var cost : Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // ACTIONS
    
    @IBAction func chooseSliderValueACTION(_ sender: UISlider) {
        tipAmount = Double(sldTipAmountSliderOUTLET.value)
        // format this value to a string using 2 decimal places ("%0.2f")
        // f denotes that it's a double
        lblSliderValueLabelOUTLET.text = String(format : "%0.2f", tipAmount!)
        
    }
    
    @IBAction func pressCalculateButtonACTION(_ sender: UIButton) {
        let cost = Double(txtCostTextOUTLET.text!)
        calculateTotal(cost: cost!)
        displayCost()

    }
    
    
    // FUNCTIONS
    
    func calculateTotal(cost : Double) {
        // convert a tip amount from a percent to a decimal point of 1
        let tip = (tipAmount! / 100) * cost
        totalCost = tip + cost
    }
    
    func displayCost() {
        lblTotalCostLabelOUTLET.text = String(format : "%0.2f", totalCost!)
        
    }


}

