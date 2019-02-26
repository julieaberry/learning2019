//
//  ViewController.swift
//  Simple Subtraction Tester
//
//  Created by Julie Berry on 2/26/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // OUTLETS
    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var sgmDifficultyChoiceOUTLET: UISegmentedControl!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var txtInputOUTLET: UITextField!
    @IBOutlet weak var btnAnswerCheckOUTLET: UIButton!
    @IBOutlet weak var lblScoreOUTLET: UILabel!
    
    // GLOBAL VARIABLES
    
    
    // ACTIONS
   
    // segmented control
    @IBAction func chooseDifficultyACTION(_ sender: Any) {
        
    }
    
    // button
    @IBAction func checkAnswerACTION(_ sender: Any) {
    }
    
    
    // FUNCTIONS

    // OVERRIDES    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

