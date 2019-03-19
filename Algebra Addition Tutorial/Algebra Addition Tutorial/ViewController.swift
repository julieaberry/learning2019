//
//  ViewController.swift
//  Algebra Addition Tutorial
//
//  Created by Julie Berry on 3/19/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // OUTLETS
    
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var txtInputOUTLET: UITextField!
    @IBOutlet weak var btnCheckAnswerOUTLET: UIButton!
    @IBOutlet weak var lblRightOrWrongOUTLET: UILabel!
    @IBOutlet weak var lblProgressOUTLET: UILabel!
    
    
    // GLOBAL VARIABLES
    
    var randomNumber : Int?
    var lastRandomNumber : Int?
    var userAnswer : Int?
    var correctAnswer : Int?
    var progress : Int = 0
    var difficulty : String = "easy"
    
    
    // ACTIONS
    
    @IBAction func checkAnswerACTION(_ sender: UIButton) {
        // check for input
        // cast input as Int
        // check if input is true
        // auto remove input
        
    }
    
    
    // FUNCTIONS
    
    
    
    
    // OVERRIDES

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

