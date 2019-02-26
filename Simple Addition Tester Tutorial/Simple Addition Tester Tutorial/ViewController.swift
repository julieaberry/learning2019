//
//  ViewController.swift
//  Simple Addition Tester Tutorial
//
//  Created by Julie Berry on 2/26/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

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
    var questionAttempted : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // ACTIONS
    @IBAction func pressCheckButtonACTION(_ sender: Any) {
        //
    }
    
    
    // FUNCTIONS
    func chooseRandomNumbers(){
        // generate a random number less than 10
        randomNumber1 = Int(arc4random_uniform(10))
        randomNumber2 = Int(arc4random_uniform(10))
        // prevent the same numbers from coming up more than once consecutively - nice but not necessary
        if (randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber){
            chooseRandomNumbers()
        }
        
        
        
    }
    
    func displayQuestion(){
        //
        
    }
    
    func checkIfCorrect() -> Bool {
        return false
    }
    


}

