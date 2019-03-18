//
//  ViewController.swift
//  Simple Algebra Test Tutorial
//
//  Created by Julie Berry on 3/17/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // OUTLETS
    
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var txtInputOUTLET: UITextField!
    @IBOutlet weak var lblRightOrWrongOUTLET: UILabel!
    @IBOutlet weak var btnCheckOUTLET: UIButton!
    @IBOutlet weak var pgvProgressViewOUTLET: UIView!
    
    
    // GLOBAL VARIABLES
    
    
    
    // ACTIONS
    
    // button
    @IBAction func checkIfCorrectACTION(_ sender: UIButton) {
        // what happens when the button is pressed
        
        // takes in user input from text field
        
        // perform a check to see if answer is correct
            // if correct
                // increase score
                // increase progress bar
                // display message to user
                // load the next question
            // if incorrect
                // increase progress bar
                // display message to user
                // load the next question
            // if nothing is entered
                // nothing happens
    }
    
    
    // FUNCTIONS
    
    // input text
    
    // button
    
    // progress bar
    
    //
    
    
    
    
    
    // OVERRIDES
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

