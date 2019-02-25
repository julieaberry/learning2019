//
//  ViewController.swift
//  True False Test Tutorial
//
//  Created by Julie Berry on 2/13/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

// TODO: add remaining constraints
// TODO: fix issue - only 3 questions are asked


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var btnTrueOUTLET: UIButton!
    @IBOutlet weak var btnFalseOUTLET: UIButton!
    @IBOutlet weak var lblScoreOUTLET: UILabel!
    @IBOutlet weak var btnNewGameOUTLET: UIButton!
    
    var listOfQuestions : [String] = []
    var listOfAnswers : [Bool] = []
    var hasBeenAnswered : [Bool] = []
    var currentQuestion : String?
    var currentAnswer : Bool?
    var score = 0
    var randomNumber : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        listOfQuestions = [
            "The capital of BC is Vancouver",
            "5 squared is 25",
            "All insects have 6 legs",
            "Peppers are vegetables"
        ]
        
        listOfAnswers = [false, true, true, false]
        hasBeenAnswered = [false, false, false, false]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressTrueButtonACTION(_ sender: UIButton) {
        if (currentAnswer == true){
            score += 1
            lblScoreOUTLET.text = "Correct! Your score is now " + String(score) + " points."
        } else {
            lblScoreOUTLET.text = "Incorrect. Your score is still " + String(score) + " points."
        }
        initiateEndGameSequence()
    }
    
    @IBAction func pressFalseButtonACTION(_ sender: UIButton) {
        if (currentAnswer == false){
            score += 1
            lblScoreOUTLET.text = "Correct! Your score is now " + String(score) + " points."
        } else {
            lblScoreOUTLET.text = "Incorrect. Your score is still " + String(score) + " points."
        }
        initiateEndGameSequence()
    }
    
    @IBAction func pressNewGameButtonACTION(_ sender: UIButton) {
        for index in 0..<listOfQuestions.count{
            hasBeenAnswered[index] = false
        }
        chooseQuestion()
        score = 0
        lblScoreOUTLET.text = "Score:"
        btnTrueOUTLET.isEnabled = true
        btnFalseOUTLET.isEnabled = true
    }
    
    func initiateEndGameSequence(){
        if (checkIfOver() == true){
            lblQuestionOUTLET.text = "End of game. Your final score is " + String(score) + "/" + String(listOfQuestions.count) + " points."
        } else {
            chooseQuestion()
        }
    }
    
    func chooseRandomNumber(){
        randomNumber = Int(arc4random_uniform(UInt32(listOfQuestions.count)))
        if (hasBeenAnswered[randomNumber!] == true){
            chooseRandomNumber()
        }
        hasBeenAnswered[randomNumber!] = true
    }
    
    func chooseQuestion(){
        chooseRandomNumber()
        currentQuestion = listOfQuestions[randomNumber!]
        currentAnswer = listOfAnswers[randomNumber!]
        lblQuestionOUTLET.text = currentQuestion!
    }
    
    func checkIfOver() -> Bool {
        for index in 0..<listOfQuestions.count{
            if (hasBeenAnswered[index] == false){
                return false
            }
        }
        btnTrueOUTLET.isEnabled = false
        btnFalseOUTLET.isEnabled = false
        return true
    }
    
}


