//
//  ViewController.swift
//  Algebra Multiplication Tutorial
//
//  Created by Julie Berry on 3/20/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*
     
     SWITCH begins in off position
     
     App displays a question, takes in a response, calculates the response anse informs the usei of right or wrong anser/
     
     App keeps track of responses using a progress view.
     When progress is full, difficulty level is increased up to 3 levels
     
     
     
     
     
 */
    
    
    // OUTLETS
    
    @IBOutlet weak var lblQuestionLabel: UILabel!
    @IBOutlet weak var txtInputText: UITextField!
    @IBOutlet weak var btnCheckAnswerButton: UIButton!
    @IBOutlet weak var lblIsCorrectLabel: UILabel!
    @IBOutlet weak var pgvProgressView: UIProgressView!
    @IBOutlet weak var swcNegativeSwitch: UISwitch!
    @IBOutlet weak var lblSwitchLabel: UILabel!
    
    
    // GLOBAL VARIABLES
    
    
    
    // ACTIONS
    
    
    @IBAction func pressCheckAnswerButton(_ sender: UIButton) {
        
    }
    
     @IBAction func turnSwitchOnOrOff(_ sender: UISwitch) {
        
    }
    
    
    
    // FUNCTIONS
    
    
    
    // OVERRIDES

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

