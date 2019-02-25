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
    
    
    // GLOBALS
    

    // OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // ACTIONS
    @IBAction func chooseConversionTypeACTION(_ sender: UISegmentedControl) {
    }
    
    @IBAction func pressConvertButtonACTION(_ sender: UIButton) {
    }
    
    // FUNCTIONS


}

