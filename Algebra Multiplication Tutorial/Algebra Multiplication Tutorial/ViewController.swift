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
     
     App displays a question, takes in a response, calculates the response and informs the usei of right or wrong anser/
     
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
    
    var randomNumber : Int?
    var lastRandomNumber : Int?
    var correctAnswer : Int?
    var userAnswer : Int?
    var progress : Float = 0
    var multiplier : Int = 1
    var includeNegatives : Bool = false
    
    
    // ACTIONS
    
    //
    @IBAction func pressCheckAnswerButton(_ sender: UIButton) {
        
    }
    
    //
     @IBAction func turnSwitchOnOrOff(_ sender: UISwitch) {
        
    }
    
    
    
    // FUNCTIONS
    
    // multiplier * x = randomNumber
        // random number generators
    func chooseQuestionNumbers(){
    }
    
        // what to do if answer is correct or incorrect
    func checkIfCorrect(){
        
    }
    
    

    
    
    // OVERRIDES

    override func viewDidLoad() {
        super.viewDidLoad()
        // Open UI with a question
         chooseQuestionNumbers()
    }


}

