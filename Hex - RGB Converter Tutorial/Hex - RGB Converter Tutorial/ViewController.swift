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
    
    
    // GLOBAL VARIABLES
        // store the values of user input
    var hexPart1 : String?
    var hexPart2 : String?
    var hexPart3 : String?
    var redValue : Int?
    var greenValue : Int?
    var blueValue : Int?
    // error handling - default hex to RGB
    var conversionType : String = "Hex to RGB"
    

    // OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // HANDLERS
    
    
    
    // ACTIONS
    @IBAction func chooseConversionTypeACTION(_ sender: UISegmentedControl) {
        switch sgmChooseConversionOUTLET.selectedSegmentIndex {
        case 0:
            // set converdion type
            conversionType = "Hex to RGB"
            // set placeholder text
            txtField1OUTLET.placeholder = "1st and 2nd hex characters"
            txtField2OUTLET.placeholder = "3rd and 4th hex characters"
            txtField3OUTLET.placeholder = "5th and 6th hex characters"
        case 1:
            // set converdion type
            conversionType = "RGB to Hex"
            // set placeholder text
            txtField1OUTLET.placeholder = "Red value"
            txtField2OUTLET.placeholder = "Green value"
            txtField3OUTLET.placeholder = "Blue value"
        default:
            conversionType = "Hex to RGB"
        }
    }
    
    @IBAction func pressConvertButtonACTION(_ sender: UIButton) {
        switch conversionType {
        case "Hex to RGB":
            // check for Hex values
            if(assignHexValues() == true) {
                // then do conversion
                convertHexToInt()
                // then display results
                displayRGBValues()
            }
        case "RGB to Hex":
            // check for RGB values
            if(assignRGBValues() == true){
                // then conversion type
                convertIntToHex()
                // then display results
                displayHexValue()
            }
        default:
            break
        }
    }
    
    // DECLARATIONS
    
    func assignHexValues() -> Bool{
        // return a Boolean
        return true
    }
    
    func assignRGBValues() -> Bool{
        //
        return true
    }
    

    
    
    // CONVERSION FUNCTIONS
    func convertHexToInt(){
        
    }
    
    func displayRGBValues(){
        
    }
    
    func convertIntToHex(){
        
    }
    
    func displayHexValue(){
        
    }
    
    // HELPER FUNCTIONS

}

