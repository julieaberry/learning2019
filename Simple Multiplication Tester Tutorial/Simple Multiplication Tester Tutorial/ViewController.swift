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
    
    
    
    
    // OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

