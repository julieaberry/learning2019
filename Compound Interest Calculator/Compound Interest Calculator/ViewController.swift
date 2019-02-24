//
//  ViewController.swift
//  Compound Interest Calculator
//
//  Created by Julie Berry on 2/12/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var sgmMissingVariableOUTLET: UISegmentedControl!
    @IBOutlet weak var txtField1OUTLET: UITextField!
    @IBOutlet weak var txtField2OUTLET: UITextField!
    @IBOutlet weak var txtField3OUTLET: UITextField!
    @IBOutlet weak var txtField4OUTLET: UITextField!
    @IBOutlet weak var btnCalculateOUTLET: UIButton!
    @IBOutlet weak var lblFinalAnswerOUTLET: UILabel!
    
    var missingVariable : String? = "Final amount"
    var variable1 : Double?
    var variable2 : Double?
    var variable3 : Double?
    var variable4 : Double?
    var finalAnswer : Double?
    var units : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseMissingVariableSegmentACTION(_ sender: UISegmentedControl) {
        txtField2OUTLET.placeholder = "Percent interest rate"
        txtField3OUTLET.placeholder = "Times compounded per year"
        switch sgmMissingVariableOUTLET.selectedSegmentIndex {
        case 0:
            missingVariable = "Final amount"
            txtField1OUTLET.placeholder = "Principal amount"
            txtField4OUTLET.placeholder = "Years invested"
        case 1:
            missingVariable = "Principal amount"
            txtField1OUTLET.placeholder = "Final amount"
            txtField4OUTLET.placeholder = "Years invested"
        case 2:
            missingVariable = "Years invested"
            txtField1OUTLET.placeholder = "Principal amount"
            txtField4OUTLET.placeholder = "Final amount"
        default:
            break
        }
    }
    
    @IBAction func pressCalculateButtonACTION(_ sender: UIButton) {
        if (assignValues() == true){
            switch missingVariable! {
            case "Final amount":
                calculateFinalAmount()
            case "Principal amount":
                calculatePrincipalAmount()
            case "Years invested":
                calculateYearsInvested()
            default:
                break
            }
            displayFinalAnswer(variable: missingVariable!)
        }
        txtField1OUTLET.text?.removeAll()
        txtField2OUTLET.text?.removeAll()
        txtField3OUTLET.text?.removeAll()
        txtField4OUTLET.text?.removeAll()
    }
    
    func assignValues() -> Bool {
        if (!txtField1OUTLET.hasText() || !txtField2OUTLET.hasText() || !txtField3OUTLET.hasText() || !txtField4OUTLET.hasText()){
            return false
        } else {
            variable1 = Double(txtField1OUTLET.text!)
            variable2 = Double(txtField2OUTLET.text!)! / 100
            variable3 = Double(txtField3OUTLET.text!)
            variable4 = Double(txtField4OUTLET.text!)
        }
        return true
    }
    
    
    func calculateFinalAmount(){
        // A = P (1 + r/n) ^ nt
        //variable1 = p, 2 = r, 3 = n, 4 = t
        finalAnswer = variable1! * pow(1 + (variable2! / variable3!), variable3! * variable4!)
        units = " dollars"
    }
    
    func calculatePrincipalAmount(){
        // P = A / (1 + r/n)^nt
        //variable1 = a, 2 = r, 3 = n, 4 = t
        finalAnswer = variable1! / pow(1 + (variable2! / variable3!), variable3! * variable4!)
        units = " dollars"
    }
    
    func calculateYearsInvested(){
        //(log(A/P) / log(1 + r/n)) / n
        //variable1 = p, 2 = r, 3 = n, 4 = a
        finalAnswer = log(variable4! / variable1!) / log(1 + (variable2! / variable3!))
        finalAnswer = finalAnswer! / variable3!
        units = " years"
    }
    
    func displayFinalAnswer(variable : String){
        lblFinalAnswerOUTLET.text = variable + ": " + String(format: "%0.4f", finalAnswer!) + units!
    }
    
}

