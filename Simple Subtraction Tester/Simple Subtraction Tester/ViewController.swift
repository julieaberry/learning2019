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
    var randomNumber1 : Int?
    var randomNumber2 : Int?
    var lastRandomNumber : Int?
    var correctAnswer : Int?
    var userInput : Int?
    var score : Int = 0
    var questionAnswered : Int = 0
    var difficulty : String = "Easier"
    
    
    // ACTIONS
   
    // segmented control
    @IBAction func chooseDifficultyACTION(_ sender: Any) {
        switch sgmDifficultyChoiceOUTLET.selectedSegmentIndex {
        case 0:
            // set difficulty level
            difficulty = "Easier"
            // which question to display
            displayEasyQuestion()
        case 1:
            // set difficulty level
            difficulty = "Harder"
            // which question to display
            displayHardQuestion()
        default:
            break
        }
    }
    
    // button
    @IBAction func checkAnswerACTION(_ sender: UIButton) {
        // !!!!! FIRST check if use input exists and can be stored as an Int
        // if entry is nil or is a non-integer then nothing will happen
        if let _ = Int(txtInputOUTLET.text!){
            userInput = Int(txtInputOUTLET.text!)!
            questionAnswered += 1
            // display response depending on if correct is true or false
            if (checkAnswer() == true){
                 // increase score
                score += 1
                // prompt user with status
                lblScoreOUTLET.text = "Correct! " + String(score) + "/" + String(questionAnswered) + " questions answered correctly"
                // change UI color
                lblScoreOUTLET.backgroundColor = UIColor.green
            } else {
                // prompt user with status
                lblScoreOUTLET.text = "Incorrect. " + String(score) + "/" + String(questionAnswered) + " questions answered correctly"
                // change UI color
                lblScoreOUTLET.backgroundColor = UIColor.red
            }
            switch difficulty {
            case "Easier":
                displayEasyQuestion()
            case "Harder":
                displayHardQuestion()
            default:
                break
            }
        }
        txtInputOUTLET.text?.removeAll()
    }
    
    
    // FUNCTIONS
    func chooseEasyRandomNumbers(){
        // generate a random number less than 10
        randomNumber1 = Int(arc4random_uniform(10))
        randomNumber2 = Int(arc4random_uniform(10))
        // prevent the same numbers from coming up more than once consecutively - nice but not necessary
        if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber || randomNumber1! < randomNumber2!){
            chooseEasyRandomNumbers()
        }
        lastRandomNumber = randomNumber1
        // note: random numbers will be displayed in displayQuestion()
        
        // assign the answer
        correctAnswer = randomNumber1! - randomNumber2!
    }
    
    func displayEasyQuestion(){
         // generate random numbers and assign their values
        chooseEasyRandomNumbers()
        // assign the question text to a string  - to the question label - rn1 - rn2 = ?
        lblQuestionOUTLET.text = String(randomNumber1!) + " - " + String(randomNumber2!) + " = ?"
    }
    
    func chooseHardRandomNumbers(){
        // generate a random number between 10 and 20
        randomNumber1 = 10 - Int(arc4random_uniform(20))
        randomNumber2 = 10 - Int(arc4random_uniform(20))
        // prevent the same numbers from coming up more than once consecutively - nice but not necessary
        if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber || randomNumber1! < randomNumber2!){
            chooseHardRandomNumbers()
        }
        lastRandomNumber = randomNumber2
        correctAnswer = randomNumber1! - randomNumber2!
    }
    
    func displayHardQuestion(){
        // generate random numbers and assign their values
        chooseHardRandomNumbers()
        // assign the question text to a string  - to the question label - rn1 - rn2 = ?
        lblQuestionOUTLET.text = String(randomNumber1!) + " - " + String(randomNumber2!) + " = ?"
        
    }
    
    func checkAnswer() -> Bool {
        // check user input agains correct answer
        if (userInput! == correctAnswer) {
            return true
        } else {
            return false
        }
    }

    
    
    // OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

