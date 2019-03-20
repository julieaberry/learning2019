//
//  ViewController.swift
//  Algebra Addition Tutorial
//
//  Created by Julie Berry on 3/19/19.
//  Copyright © 2019 Julie Berry. All rights reserved.



import UIKit

class ViewController: UIViewController {
    
// TODO: rename to Intro to Algebra Addition
// TODO: randomize first number in place of 1 after easy level
// TODO: if button is touched with no input, change response label to "please answer the question"
    // TODO: add indicator arrows for user input
    
    
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
    
    // what happens when the button is touched
    @IBAction func checkAnswerACTION(_ sender: UIButton) {
        // make sure the app doesn't crash if non-numerical vaue , or if nothing is input so all functionality goes in here
        // check for input and cast input as Int
        if let _ = Int(txtInputOUTLET.text!){
            // assign input to userAnswer variable
            userAnswer = Int(txtInputOUTLET.text!)!
            // check if the userAnswer is correct or not
            checkIfCorrect()
        }
        // auto remove text input
        txtInputOUTLET.text?.removeAll()
    }
    
    // FUNCTIONS
    
    // there are 3 levels of difficulty each with unique random number sets //
    // random number generators (1 + x = randomNumber)
    func chooseQuestionNumbers(difficultyLevel : String){
        // switch statement defines each level
        switch difficultyLevel {
        case "easy":
            // generate a random number between 0 and 4
            // Logic: by adding 1 to the random number, the random number will never be less than 1
            randomNumber = 1 + Int(arc4random_uniform(4))
            // make sure random numbers are always different from the last one generated
            if (randomNumber == lastRandomNumber){
                // send another "easy" question to user
                chooseQuestionNumbers(difficultyLevel: "easy")
            }
        case "medium":
            // Logic: add 5 to the Int (0) to generate random number between 5 and 8. The 8 comes from the number of possibilites from 0 to 4, which is 3. so 3 + 5 = 8.
            randomNumber = 5 + Int(arc4random_uniform(4))
            // make sure random numbers are always different from the last one generated
            if (randomNumber == lastRandomNumber){
                // send another "medium" question to user
                chooseQuestionNumbers(difficultyLevel: "medium")
            }
        case "hard":
            // generate a random number between 9 and 12
            // Logic: add 9 to the Int (0) to generate random number between 9 and 12. The 12 comes from the number of possibilites from 0 to 4, which is 3. so 3 + 9 = 12.
            randomNumber = 9 + Int(arc4random_uniform(4))
            // make sure random numbers are always different from the last one generated
            if (randomNumber == lastRandomNumber){
                 // send another "hard" question to user
                chooseQuestionNumbers(difficultyLevel: "hard")
            }
        default:
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
    
     // what happens when the user input an answer
    func checkIfCorrect(){
        // if user answers CORRECT
        if (userAnswer! == correctAnswer!){
            // increase progress by 1
            progress += 1
            // change response label text
            lblRightOrWrongOUTLET.text = "Correct!"
            // change respoonse label bg color
            lblRightOrWrongOUTLET.backgroundColor = UIColor.green
            // after 4 correct answers, question difficulty increases
            if (progress == 4){
                // get current level
                switch difficulty {
                case "easy":
                    // get medium questions
                    difficulty = "medium"
                    // tell user they are moving to medium questions
                    lblRightOrWrongOUTLET.text = "Correct! Onto medium questions"
                    // reset progress to 0
                    progress = 0
                case "medium":
                    // get hard questions
                    difficulty = "hard"
                    // tell user they are moving to hard questions
                    lblRightOrWrongOUTLET.text = "Correct! Onto hard questions"
                    // reset progress to 0
                    progress = 0
                    // if questions are already hard, and user has completed 4 questions correctly, the app continues to load hard questions
                    
                    // message saying congratulations!
                    // message asking to start over?
                    // button text says "GET STARTED"
                    
                    // TODO: - create another func to end game and start over
                default:
                    break
                }
            }
            // if user answer is INCORRECT
        } else {
            // change response label text
            lblRightOrWrongOUTLET.text = "Incorrect"
            // change respoonse label bg color
            lblRightOrWrongOUTLET.backgroundColor = UIColor.red
        }
         // display string of user progress
        lblProgressOUTLET.text = String(progress) + "/4  -  " + difficulty
         // continue the same difficulty level
        chooseQuestionNumbers(difficultyLevel: difficulty)
    }
    
    
 // OVERRIDES
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: - the question cannot be answered until the UI is touch activated. fix this!
        // show nothing in the question label
        // change button text to "LET'S GO!"
        // return button text to "CHECK ANSWER" after user inputs a number
        
         // opens the UI with an easy question
        chooseQuestionNumbers(difficultyLevel: "easy")
    }

}
