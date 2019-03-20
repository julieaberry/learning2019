//
//  ViewController.swift
//  Algebra Subtraction Tutorial
//
//  Created by Julie Berry on 3/19/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // OUTLETS
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var btnCheckAnswer: UIButton!
    @IBOutlet weak var btnNo: UIButton!
    @IBOutlet weak var lblRightOrWrong: UILabel!
    @IBOutlet weak var lblProgress: UILabel!
    
    
    // GLOBAL VARIABLES
    
    var randomNumber1 : Int?
    var randomNumber2 : Int?
    var lastRandomNumber : Int?
    var userAnswer : Int?
    var correctAnswer : Int?
    var progress : Int = 0
    var difficulty : String = "easy"
    
    
    // ACTIONS
    
    @IBAction func checkAnswerACTION(_ sender: UIButton) {
        
    }
    
    @IBAction func chooseNoACTION(_ sender: UIButton) {
        
    }
    
    // FUNCTIONS
    
    // x - rn1 = rn2
    // rn1 - x = rn2
    // random number generators
    func setUpQuestion(){
        
    }
    
    // get a seaparate set of numbers based on difficulty level
    func chooseQuestionNumbers(difficultLevel : String) {
        
    }
    
    // define what is correct or incorrect
    func checkIfCorrect() {
        
    }
    
    
    
    // OVERRIDES

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

