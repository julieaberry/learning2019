//
//  ViewController.swift
//  PickerView Tutorial
//
//  Created by Julie Berry on 2/23/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//


/*
 PICKER VIEW NEEDS:
 Delegate
 DataSource - Array of Strings
 */

// TODO: fade colors
// TODO: change font

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    // note: inheritance classes give us access to Delegate and DataSource libraries
    
    // OUTLETS
    @IBOutlet weak var lblPickerChoiceOUTLET: UILabel!
    @IBOutlet weak var pkrPickerOUTLET: UIPickerView!
    
    // GLOBAL VARIABLES
    
    // populate the data source by initializing it as an array of string values
    var pickerDataSource = [["Red","Blue","Green","Yellow","Black","White","Brown"],
                            ["Red","Blue","Green"]]
    
    // OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pkrPickerOUTLET.delegate = self
        self.pkrPickerOUTLET.dataSource = self
        
    }
    
 
    // PICKER FUNCTIONS
    
    // how many columns are going to be in the picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // the length of the list = number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource[component].count
    }
    
    
    
    // title of the row selected
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // returns the string value for whatever row the user is on
        //return pickerDataSource[row] - 1 column
        return pickerDataSource[component][row] // 2 columns
    }
    
    // what happens when something is selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // if first column is being selected we can do all of this stuff
        // component == 0 is column 1
        if (component == 0){
            switch row {
            case 0:
                lblPickerChoiceOUTLET.text = pickerDataSource[0][0]
            case 1:
                lblPickerChoiceOUTLET.text = pickerDataSource[0][1]
            case 2:
                lblPickerChoiceOUTLET.text = pickerDataSource[0][2]
            case 3:
                lblPickerChoiceOUTLET.text = pickerDataSource[0][3]
            case 4:
                lblPickerChoiceOUTLET.text = pickerDataSource[0][4]
            case 5:
                lblPickerChoiceOUTLET.text = pickerDataSource[0][5]
            case 6:
                lblPickerChoiceOUTLET.text = pickerDataSource[0][6]
            default:
                lblPickerChoiceOUTLET.text = "Picker View Choice"
            }
            // otherwise, we can do these things
            // component == 1 is column 2
        } else if (component == 1){
            switch row {
            case 0:
                lblPickerChoiceOUTLET.backgroundColor = UIColor.red
            case 1:
                lblPickerChoiceOUTLET.backgroundColor = UIColor.blue
            case 2:
                lblPickerChoiceOUTLET.backgroundColor = UIColor.green
            default:
                lblPickerChoiceOUTLET.backgroundColor = UIColor.white
            }
        }
        
    }
    
    // change attributes of the row title
    private func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let myTitle = NSMutableAttributedString(string: pickerDataSource[component][row], attributes: [NSAttributedString.Key.font : UIFont(name: "Chalkduster", size: 30)!, NSAttributedString.Key.foregroundColor : UIColor.red])
        return myTitle
    }
    
    // change attributes of the label
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let myTitle = NSMutableAttributedString(string: pickerDataSource[component][row], attributes: [NSAttributedString.Key.font : UIFont(name: "Chalkduster", size: 20)!, NSAttributedString.Key.foregroundColor : UIColor.red])
        pickerLabel.attributedText = myTitle
        pickerLabel.textAlignment = .center
        return pickerLabel
    }
    
}



