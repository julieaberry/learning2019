//
//  ViewController.swift
//  Hex - RGB Converter Tutorial
//
//  Created by Julie Berry on 2/25/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // OUTLETS
    
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var sgmChooseConversionOUTLET: UISegmentedControl!
    @IBOutlet weak var txtField1OUTLET: UITextField!
    @IBOutlet weak var txtField2OUTLET: UITextField!
    @IBOutlet weak var txtField3OUTLET: UITextField!
    @IBOutlet weak var btnConvertOUTLET: UIButton!
    @IBOutlet weak var lblFinalResultsOUTLET: UILabel!
    
    // GLOBAL VARIABLES / HANDLERS
    // store the values of user input
    var hexPart1 : String?
    var hexPart2 : String?
    var hexPart3 : String?
    var redValue : Int?
    var greenValue : Int?
    var blueValue : Int?
    // error handling - default hex to RGB
    var conversionType : String = "Hex to RGB"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // ACTIONS
        // SEGMENTED CONTROL
    @IBAction func chooseConverstionTypeACTION(_ sender: UISegmentedControl) {
        // test which segment is selected
        switch sgmChooseConversionOUTLET.selectedSegmentIndex {
        case 0:
            // set conversion type
            conversionType = "Hex to RGB"
            // set placeholder text
            txtField1OUTLET.placeholder = "1st and 2nd hex characters"
            txtField2OUTLET.placeholder = "3rd and 4th hex characters"
            txtField3OUTLET.placeholder = "5th and 6th hex characters"
            // error handling - limit user keyboard type
            txtField1OUTLET.keyboardType = UIKeyboardType.default
            txtField2OUTLET.keyboardType = UIKeyboardType.default
            txtField3OUTLET.keyboardType = UIKeyboardType.default
        case 1:
            // set conversion type
            conversionType = "RGB to Hex"
            // set placeholder text
            txtField1OUTLET.placeholder = "Red value"
            txtField2OUTLET.placeholder = "Green value"
            txtField3OUTLET.placeholder = "Blue value"
            // error handling - limit user keyboard type
            txtField1OUTLET.keyboardType = UIKeyboardType.decimalPad
            txtField2OUTLET.keyboardType = UIKeyboardType.decimalPad
            txtField3OUTLET.keyboardType = UIKeyboardType.decimalPad
        default:
            conversionType = "Hex to RGB"
        }
    }
            // CONVERT BUTTON
    @IBAction func pressConvertButtonACTION(_ sender: UIButton) {
        // test conversion type
        switch conversionType {
        case "Hex to RGB":
             // check for Hex values
            if (assignHexValues() == true){
                // then do conversion
                convertHexToInt()
                // then display results
                displayRGBValues()
            }
        case "RGB to Hex":
            // check for Hex values
            if (assignRGBValues() == true){
                // then do conversion
                convertIntToHex()
                // then display results
                displayHexValue()
            }
        default:
            break
        }
        // remove text from fields when button is used
        txtField1OUTLET.text?.removeAll()
        txtField2OUTLET.text?.removeAll()
        txtField3OUTLET.text?.removeAll()
    }
    
    // DECLARATION FUNCTIONS
    
    func assignHexValues() -> Bool {
        // error handling - check for field content
        if (!txtField1OUTLET.hasText() || !txtField2OUTLET.hasText() || !txtField3OUTLET.hasText()){
            return false
        } else {
             // translate hex inputs
            hexPart1 = txtField1OUTLET.text
            hexPart2 = txtField2OUTLET.text
            hexPart3 = txtField3OUTLET.text
        }
        return true
    }
    
    func assignRGBValues() -> Bool {
        // error handling - check for field content
        if (!txtField1OUTLET.hasText() || !txtField2OUTLET.hasText() || !txtField3OUTLET.hasText()){
            return false
        } else {
            // translate RGB values from text to Int by force-unwrapping
            redValue = Int(txtField1OUTLET.text!)
            greenValue = Int(txtField2OUTLET.text!)
            blueValue = Int(txtField3OUTLET.text!)
        }
        return true
    }
    
    
    // CONVERT / DISPLAY FUNCTIONS
    
    func convertHexToInt() {
        // looking for stringd that represent hex numbers
        // handle nil entry,
        // and 2 hex characters represent 8 bytes each = 16
        redValue = strtol(hexPart1, nil, 16)
        greenValue = strtol(hexPart2, nil, 16)
        blueValue = strtol(hexPart3, nil, 16)
    }
    
    // display the results in Final Result
    func displayRGBValues() {
        lblFinalResultsOUTLET.text = "Red value is: " + String(redValue!) + ", green value is: " + String(greenValue!) + ", and blue value is: " + String(blueValue!)
        // label BG changes to reflect the RGB values
            // convert values from Int to CGFloat and divide by 255
        lblFinalResultsOUTLET.backgroundColor = UIColor.init(red: CGFloat(redValue!)/255, green: CGFloat(greenValue!)/255, blue: CGFloat(blueValue!)/255, alpha: 1)
    }
    
    func convertIntToHex() {
        // assign string versions of each number
        hexPart1 = String(format: "%0.2x", redValue!)
        hexPart2 = String(format: "%0.2x", greenValue!)
        hexPart3 = String(format: "%0.2x", blueValue!)
    }
    
    func displayHexValue(){
        lblFinalResultsOUTLET.text = "Hexcode value is: 0x" + hexPart1! + hexPart2! + hexPart3!
        // label BG changes to reflect the RGB values
            // convert values from Int to CGFloat and divide by 255
        lblFinalResultsOUTLET.backgroundColor = UIColor.init(red: CGFloat(redValue!)/255, green: CGFloat(greenValue!)/255, blue: CGFloat(blueValue!)/255, alpha: 1)
    }
    
    
}




