//
//  ViewController.swift
//  Simple Multiplication Tester Tutorial
//
//  Created by Julie Berry on 2/26/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // OUTLETS

    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var sgmDifficultyChoiceOUTLET: UISegmentedControl!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var sldInputValueOUTLET: UISlider!
    @IBOutlet weak var lblSliderLabelOUTLET: UILabel!
    @IBOutlet weak var btnAnswerCheckOUTLET: UIButton!
    @IBOutlet weak var lblScoreOUTLET: UILabel!
    
    // GLOBAL VARIABLES
    var randomNumber1 : Int?
    var randomNumber2 : Int?
    var lastRandomNumber : Int?
    var correctAnswer : Int?
    var userAnswer : Int?
    var score : Int = 0
    var questionsAnswered : Int = 0
    var difficulty : String = "Easy"
    
    
    // ACTIONS
    
        // segmented control action
    @IBAction func chooseDifficultyACTION(_ sender: Any) {
        //
        switch sgmDifficultyChoiceOUTLET.selectedSegmentIndex {
        case 0 :
            difficulty = "Easy"
            displayEasyQuestion()
        case 1 :
            difficulty = "Medium"
            displayMediumQuestion()
        case 2 :
            difficulty = "Hard"
            displayHardQuestion()
        default:
            break
        }
    }
    
    // use slider to select and display user answer
    @IBAction func chooseInputValueACTION(_ sender: Any) {
        // check slider value and round up to the nearest 1
        userAnswer = Int(roundf(sldInputValueOUTLET.value))
        // use the string form of userAnswer to display slider value
        lblSliderLabelOUTLET.text = String(userAnswer!)
    }
    
    // test user responses
    @IBAction func checkAnswerACTION(_ sender: Any) {
        // check for empty response
        if let _ = userAnswer{
            questionsAnswered += 1
            // check for correct response
            if (checkIfCorrect() == true){
                // increase score
                score += 1
                // display "correct" output to user
                lblScoreOUTLET.text = "Correct! " + String(score) + "/" + String(questionsAnswered) + " questions answered correcty"
                // change bg color to green if correct
                lblScoreOUTLET.backgroundColor = UIColor.green
            } else {
                // display "incorrect" ouptput to user
                lblScoreOUTLET.text = "Incorrect. " + String(score) + "/" + String(questionsAnswered) + " questions answered correcty"
                // change lbl bg to red
                lblScoreOUTLET.backgroundColor = UIColor.red
            }
            
            // display a new question
            switch difficulty {
            case "Easy":
                displayEasyQuestion()
            case "Medium":
                displayMediumQuestion()
            case "Hard":
                displayHardQuestion()
            default:
                break
            }
        }

    }
    
    
    // FUNCTIONS
    // test for difficulty level selection
    func chooseRandomNumbers(difficultyLevel : String){
        switch difficultyLevel {
            // generate numbers for each level
        case "Easy" :
            // set slider values
            randomNumber1 = Int(arc4random_uniform(0))
            randomNumber2 = Int(arc4random_uniform(16))
            // if random numbers are equal to lastRandomNumber, choose "Easy" again
            if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber) {
                chooseRandomNumbers(difficultyLevel: "Easy")
            }
        case "Medium" :
            //  set slider values to exclude case "Easy" numbers
            randomNumber1 = 5 + Int(arc4random_uniform(25))
            randomNumber2 = 5 + Int(arc4random_uniform(81))
            // if random numbers are equal to lastRandomNumber, choose "Medium" again
            if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber) {
                chooseRandomNumbers(difficultyLevel: "Medium")
            }
        case "Hard" :
            // exclude case "Medium"
            randomNumber1 = 5 - Int(arc4random_uniform(-25))
            randomNumber2 = 5 - Int(arc4random_uniform(25))
            // if random numbers are equal to lastRandomNumber, choose "Hard" again
            if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber) {
                chooseRandomNumbers(difficultyLevel: "Hard")
            }
        default:
            break
        }
    }
    
    // define questions for difficulty levels
        // rn1  * rn2  =  ?
            // cant these be integrrated into the switch?
    func displayEasyQuestion(){
        // call function to choose random numbers
        chooseRandomNumbers(difficultyLevel: "Easy")
         // set question text
        lblQuestionOUTLET.text = String(randomNumber1!) + "  x  " + String(randomNumber2!) + "  =  ?"
    }
    
    func displayMediumQuestion(){
        // call function to choose random numbers
        chooseRandomNumbers(difficultyLevel: "Medium")
        // set question text
        lblQuestionOUTLET.text = String(randomNumber1!) + "  x  " + String(randomNumber2!) + "  =  ?"
    }
    
    func displayHardQuestion(){
        // call function to choose random numbers
        chooseRandomNumbers(difficultyLevel: "Hard")
        // set question text
        lblQuestionOUTLET.text = String(randomNumber1!) + "  x  " + String(randomNumber2!) + "  =  ?"
    }
    
    // response test
    func checkIfCorrect() -> Bool {
        if (userAnswer == correctAnswer){
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

