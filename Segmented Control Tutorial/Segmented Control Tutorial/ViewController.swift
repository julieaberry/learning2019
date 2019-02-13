//
//  ViewController.swift
//  Segmented Control Tutorial
//
//  Created by Julie Berry on 2/12/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

/*
 
 TODO: set neither side to active at start
 ++ done in atributes inspector
 
 TODO: add reset button
 
 TODO: Control font on button labels
 
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sgmSegmentedControlOUTLET: UISegmentedControl!
    @IBOutlet weak var lblSegmentLabelOUTLET: UILabel!
    @IBOutlet weak var txtField1OUTLET: UITextField!
    @IBOutlet weak var txtField2OUTLET: UITextField!
    
    // global variables
    var number1 : Double?
    var number2 : Double?
    var finalAnswer : Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // modify segmented control properties in code
        func modifyProperties() {
            // disabling the first segment on start
//            sgmSegmentedControlOUTLET.setEnabled(false, forSegmentAt: 0)
            // set the title of the second segment
//            sgmSegmentedControlOUTLET.setTitle("Hello", forSegmentAt: 1)
            // .set functions will change the property
            // others will just return the property
            
        }
        
    }
    
// actions
    @IBAction func chooseSegmentACTION(_ sender: UISegmentedControl) {
        //
        switch
         // selecting the value of the selected index sgmSegmentedControlOUTLET.selectedSegmentIndex
        sgmSegmentedControlOUTLET.selectedSegmentIndex {

        case 0:
        // do something
        // lblSegmentLabelOUTLET.text = "Left segment selected"
            addFunction()
        case 1:
        // do something
            //lblSegmentLabelOUTLET.text = "Right segment selected"
            subtractFunction()
        default:
            break
        }
        
    }
    
    // functions
    func addFunction() {
        // do something
        // text field text = whatever text is entered converted to a number
        number1 = Double(txtField1OUTLET.text!)
        number2 = Double(txtField2OUTLET.text!)
        // add the numbers together to get finalAnswer text
        finalAnswer = number1! + number2!
        lblSegmentLabelOUTLET.text = String(finalAnswer!)
        
    }
    
    func subtractFunction() {
        // do something
        number1 = Double(txtField1OUTLET.text!)
        number2 = Double(txtField2OUTLET.text!)
        // subtract the numbers to get finalAnswer text
        finalAnswer = number1! - number2!
        lblSegmentLabelOUTLET.text = String(finalAnswer!)
    }

    
}

