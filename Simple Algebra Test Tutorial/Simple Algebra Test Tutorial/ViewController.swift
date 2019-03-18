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
    
    var randomNumber1 : Int?
    var randomNumber2 : Int?
    var inputNumber : Int?
    var lastRandomNumber : Int?
    var progress : Int = 0
    var questionsAttempted : Int = 0
    
    
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
    
    // random number generators
    func chooseRandomNumbers(){
        // choose numbers including only 0 - 10
        randomNumber1 = Int(arc4random_uniform(10))
        randomNumber2 = Int(arc4random_uniform(10))
        // make sure numbers are not the same as the last ones
        if(randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber) {
            // if they are then choose random numbers again
            chooseRandomNumbers()
            // declare what last random number is
            lastRandomNumber = randomNumber1
            
        }
    }
    
    // show question in label
    func displayQuestion(){
        // assign values to random numbers
        chooseRandomNumbers()
        // set label question
        lblQuestionOUTLET.text = String(randomNumber1!) + " + X = " + String(randomNumber2!)
    }
    
    // check answers
    func checkIfCorrect() -> Bool {
        return false
    }
    
    
    
    
    
    
    
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

