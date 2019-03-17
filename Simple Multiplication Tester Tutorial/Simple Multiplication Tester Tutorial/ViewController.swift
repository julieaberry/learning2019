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
    
    @IBAction func chooseDifficultyACTION(_ sender: Any) {
        //
    }
    
    @IBAction func chooseInputValueACTION(_ sender: Any) {
        //
    }
    
    
    @IBAction func checkAnswerACTION(_ sender: Any) {
        //
    }
    
    
    // FUNCTIONS
    // test for difficulty level selection
    func chooseRandomNumbers(difficultyLevel : String){
        switch difficultyLevel {
            // generate numbers for each level
        case "Easy" :
            // include only numbers 0 - 4
            randomNumber1 = Int(arc4random_uniform(5))
            randomNumber2 = Int(arc4random_uniform(5))
            // if random numbers are equal to lastRandomNumber, choose "Easy" again
            if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber) {
                chooseRandomNumbers(difficultyLevel: "Easy")
            }
        case "Medium" :
            // exclude case "Easy" numbers 0 - 4
            randomNumber1 = 5 + Int(arc4random_uniform(10))
            randomNumber2 = 5 + Int(arc4random_uniform(10))
            // if random numbers are equal to lastRandomNumber, choose "Medium" again
            if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber) {
                chooseRandomNumbers(difficultyLevel: "Medium")
            }
        case "Hard" :
            // exclude case "Medium"
            randomNumber1 = 5 - Int(arc4random_uniform(11))
            randomNumber2 = 5 - Int(arc4random_uniform(11))
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
    return false
    }
    
    
    // OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

