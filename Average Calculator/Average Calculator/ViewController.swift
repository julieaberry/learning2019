//
//  ViewController.swift
//  Average Calculator
//
//  Created by Julie Berry on 2/11/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// UI Outlets
    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var tztInputTextOUTLET: UITextField!
    @IBOutlet weak var btnCalculateOUTLET: UIButton!
    @IBOutlet weak var lblDisplayAverageOUTLET: UILabel!
    @IBOutlet weak var btnResetOUTLET: UIButton!
    
    // Global Variables
    var average : Double = 0
    var total : Double = 0
    var count : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func pressCalculateButton(_ sender: UIButton) {
        //
        if(!(tztInputTextOUTLET.text? .isEmpty)!){
        
            let input = Double(tztInputTextOUTLET.text!)
            count += 1
            calculateAverage(inputNumber: input!)
            displayAverage()
            tztInputTextOUTLET.text?.removeAll()
        } else {
            lblDisplayAverageOUTLET.text = "You need to enter a number, silly!"
        }
    
    }
    
    @IBAction func pressResetButton(_ sender: UIButton) {
        //
        resetValues()
    }
    
    func calculateAverage(inputNumber : Double) {
        //
        total += inputNumber
        average = total / count
    }
    
    func displayAverage() {
        //
        lblDisplayAverageOUTLET.text = String(average)
    }
    
    func resetValues() {
        //
        average = 0
        total = 0
        count = 0
        lblDisplayAverageOUTLET.text = "Display Average"
        
    }


}

