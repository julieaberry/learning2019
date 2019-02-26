//
//  ViewController.swift
//  Simple Addition Tester Tutorial
//
//  Created by Julie Berry on 2/26/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//


// TODO: FIXIT - UI doesnt display question until user inputs a number ??? NOTE: done by calling the function in viewDidLoad
// TODO: add contraints & UI color sceme

import UIKit

class ViewController: UIViewController {
   
    
    // OUTLETS
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var txtInputOUTLET: UITextField!
    @IBOutlet weak var btnCheckAnswerOUTLET: UIButton!
    @IBOutlet weak var lblScoreOUTLET: UILabel!
    
    // GLOBAL VARIABLES
    var randomNumber1 : Int?
    var randomNumber2 : Int?
    var lastRandomNumber : Int?
    var correctAnswer : Int?
    var userInput : Int?
    var score : Int = 0
    var questionsAttempted : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // begin UI by displaying a question
        displayQuestion()
    }
    
    
    // ACTIONS
    @IBAction func pressCheckButtonACTION(_ sender: Any) {
        // !!!!! FIRST check if use input exists and can be stored as an Int
            // if entry is nil or is a non-integer then nothing will happen
        if let _ = Int(txtInputOUTLET.text!) {
        // assign user input
        userInput = Int(txtInputOUTLET.text!)!
       
        // display response depending on if correct is true or false
        if(checkIfCorrect() == true) {
            // increase score
            score += 1
            // prompt user with status
            lblScoreOUTLET.text = "Correct! " + String(score) + " / " +  String(questionsAttempted) + " questions answered correctly"
            // change UI color
            lblScoreOUTLET.backgroundColor = UIColor.green
            
    
        } else {
            // prompt user with status
            lblScoreOUTLET.text = "Incorrect!"
            // change UI color
            lblScoreOUTLET.backgroundColor = UIColor.red
        }
        // then have the button display another question
        displayQuestion()
        
        }
        // remove text when button is pressed - move this to if let?
        txtInputOUTLET.text?.removeAll()
    }
    
    
    // FUNCTIONS
    
    // assigning random number selection
    func chooseRandomNumbers(){
        // generate a random number less than 10
        randomNumber1 = Int(arc4random_uniform(10))
        randomNumber2 = Int(arc4random_uniform(10))
        // prevent the same numbers from coming up more than once consecutively - nice but not necessary
        if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber){
            chooseRandomNumbers()
        }
        lastRandomNumber = randomNumber1
        // note: random numbers will be displayed in displayQuestion()
        
        // assign the answer
        correctAnswer = randomNumber1! + randomNumber2!
    }
    
    //
    func displayQuestion(){
        // generate random numbers and assign their values
        chooseRandomNumbers()
        // assign the question text to a string  - to the question label - rn1 + rn2 = ?
        lblQuestionOUTLET.text = String(randomNumber1!) + " + " + String(randomNumber2!) + " = ?"
        
    }
    
    func checkIfCorrect() -> Bool {
        // check user input agains correct answer
        if (userInput! == correctAnswer) {
            return true
        } else {
            return false
        }
    }
    


}

