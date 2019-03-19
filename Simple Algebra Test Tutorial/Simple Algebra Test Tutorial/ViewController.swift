//
//  ViewController.swift
//  Simple Algebra Test Tutorial
//
//  Created by Julie Berry on 3/17/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//


// TODO: improve UI
// TODO: simple code cleanup


import UIKit

class ViewController: UIViewController {
    
    
    // OUTLETS
    
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var txtInputOUTLET: UITextField!
    @IBOutlet weak var lblRightOrWrongOUTLET: UILabel!
    @IBOutlet weak var btnCheckOUTLET: UIButton!
    @IBOutlet weak var pgvProgressViewOUTLET: UIProgressView!
    
    
    // GLOBAL VARIABLES
    
    var randomNumber1 : Int?
    var randomNumber2 : Int?
    var inputNumber : Int?
    var lastRandomNumber : Int?
    var progress : Int = 0
    var questionsAttempted : Int = 0
    
    
    // ACTIONS
    
        // this can be done as a switch
    // what happens when the button is touched
    @IBAction func checkIfCorrectACTION(_ sender: UIButton) {
        // check if progress < 1 (at 10 questions) prompt user to continue or quit
        if (pgvProgressViewOUTLET.progress < 1) {
            
            // if answer cannot be converted to an integer
            if let _ = Int(txtInputOUTLET.text!) {
                // assign input number
                inputNumber = Int(txtInputOUTLET.text!)!
                // increase number of attempts by 1
                questionsAttempted += 1
                // then if answer is correct
                if (checkIfCorrect() == true) {
                    // increase progress by 1 ????????/
                    progress += 1
                    
                    
                    // display "correct message to user"
                    lblRightOrWrongOUTLET.text = "Correct!" + String(progress) + " correct."
                    // increase progress by 1
                    pgvProgressViewOUTLET.progress += 0.1
                    // check if progress bar is at the end (1)
                    if (pgvProgressViewOUTLET.progress == 1) {
                        // change question text
                        lblQuestionOUTLET.text = "Keep going?"
                        // TODO: - change text on answer display
                        lblRightOrWrongOUTLET.text = String(questionsAttempted) + "attempts at 10 questions"
                        // TODO: - change text on button
                        btnCheckOUTLET.setTitle("KEEP GOING", for: UIControl.State.normal)
                        
                        
                    } else {
                        // if progress bar is not at the end load another question
                        displayQuestion()
                        btnCheckOUTLET.setTitle("CHECK ANSWER", for: UIControl.State.normal)
                    }
            }
              // if answer is incorrect
            } else if (checkIfCorrect() == false) {
                // display "incorrect" message
                lblRightOrWrongOUTLET.text = "Incorrect, try again"
                // and load a new question
                displayQuestion()
            } else {
                // display "starter" message
                lblRightOrWrongOUTLET.text = "Check your answers here"
                // and load a new question
                displayQuestion()
            }
            // if the progress bar is complete once the button is touched
        } else if (pgvProgressViewOUTLET.progress == 1) {
            // load a new question
            displayQuestion()
            // set progress back to 0
            pgvProgressViewOUTLET.progress = 0
        }
        // clear text from input when no longer in use
        txtInputOUTLET.text?.removeAll()
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
        lblQuestionOUTLET.text = String(randomNumber1!) + " + x = " + String(randomNumber2!)
    }
    
    // check answers
    func checkIfCorrect() -> Bool {
        // if random1 + user input = random2
            // or if random2 - random1 = user input
        if (randomNumber1! + inputNumber! == randomNumber2!) {
            return true
        }
        return false
    }

    
    // OVERRIDES
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // display the first questions as soon as the app loads
        displayQuestion()
        // display "starter" message
        lblRightOrWrongOUTLET.text = "Check your answer"
    }

}

