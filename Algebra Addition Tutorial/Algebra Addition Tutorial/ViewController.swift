//
//  ViewController.swift
//  Algebra Addition Tutorial
//
//  Created by Julie Berry on 3/19/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // TODO: rename to Intro to Algebra Addition
    // TODO: randomize first number in place of 1 after easy level
    
    // OUTLETS
    
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var txtInputOUTLET: UITextField!
    @IBOutlet weak var btnCheckAnswerOUTLET: UIButton!
    @IBOutlet weak var lblRightOrWrongOUTLET: UILabel!
    @IBOutlet weak var lblProgressOUTLET: UILabel!
    
    
    // GLOBAL VARIABLES
//    var randomNumber : Int?
//    var lastRandomNumber : Int?
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
    
        // there are 3 levels of difficulty each with unique random number sets //
    // random number generators (1 + x = randomNumber)
    func chooseQuestionNumbers (difficultyLevel : String) {
       // these are not used anywhere else in the code at this point so they became local to this function
        var randomNumber : Int?
        var lastRandomNumber : Int?
        // switch statement defines each level
        switch difficultyLevel {
        case "easy" :
            // generate a random number between 0 and 4
                // Logic: by adding 1 to the random number, the random number will never be less than 1
            randomNumber = 1 + Int(arc4random_uniform(4))
            // make sure random numbers are always different from the last one generated
            if (randomNumber == lastRandomNumber) {
                // send another "easy" question to user
                chooseQuestionNumbers(difficultyLevel: "easy")
            }
        case "medium" :
            // Logic: add 5 to the Int (0) to generate random number between 5 and 8. The 8 comes from the number of possibilites from 0 to 4, which is 3. so 3 + 5 = 8.
            randomNumber = 5 + Int(arc4random_uniform(4))
            // make sure random numbers are always different from the last one generated
            if (randomNumber == lastRandomNumber) {
                // send another "medium" question to user
                chooseQuestionNumbers(difficultyLevel: "medium")
            }
        case "hard" :
                // generate a random number between 9 and 12
            
                // Logic: add 9 to the Int (0) to generate random number between 9 and 12. The 12 comes from the number of possibilites from 0 to 4, which is 3. so 3 + 9 = 12.
                randomNumber = 9 + Int(arc4random_uniform(4))
                // make sure random numbers are always different from the last one generated
                if (randomNumber == lastRandomNumber) {
                    // send another "hard" question to user
                    chooseQuestionNumbers(difficultyLevel: "hard")
            }
        default :
            break
        }
        // make sure not to generate the same numbers repeatedly
        lastRandomNumber = randomNumber
        // set what the correct answer is
            // Logic: since all options add 1 to the random number:
            // 1 + x = rn  therefore  x = rn - 1
        correctAnswer = randomNumber! - 1
        // set question text to question label
        lblQuestionOUTLET.text = "1  +  x  =  " + String(randomNumber!)
    }
    
    //
    func checkIfCorrect () {
        
    }
    
    
    
    
    // OVERRIDES

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

