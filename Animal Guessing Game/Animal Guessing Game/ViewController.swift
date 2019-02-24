//
//  ViewController.swift
//  Animal Guessing Game
//
//  Created by Julie Berry on 2/13/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitleLabel: UILabel!
    @IBOutlet weak var imvImageView: UIImageView!
    @IBOutlet weak var btnButton1: UIButton!
    @IBOutlet weak var btnButton2: UIButton!
    
    var imageArray = [animal_crocodile,
                      animal_elephant,
                      animal_giraffe,
                      animal_gorilla,
                      animal_hippopotamus,
                      animal_lion,
                      animal_meerkat,
                      animal_ostrich,
                      animaml_rhinocerous,
                      animal_zebra]
    
    var animalNamesArray = ["Crocodile",
                            "Elephant",
                            "Giraffe",
                            "Gorilla",
                            "Hippopotamus",
                            "Lion",
                            "Meerkat",
                            "Ostrich",
                            "Rhinocerous",
                            "Zebra"]
    
    var randomNumber : Int?
    var lastRandomNumber : Int?
    var animalChoice : String?
    var wrongAnimalChoice : String?
    var buttonWithCorrectChoice : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setButtonTitles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressButton1(_ sender: UIButton) {
        switch buttonWithCorrectChoice! {
        case 0:
            lblTitleLabel.text = "That's correct!"
        case 1:
            lblTitleLabel.text = "Not quite, good try!"
        default:
            break
        }
    }
    
    @IBAction func pressButton2(_ sender: UIButton) {
        switch buttonWithCorrectChoice! {
        case 0:
            lblTitleLabel.text = "Not quite, good try!"
        case 1:
            lblTitleLabel.text = "That's correct!"
        default:
            break
        }
    }
    
    func chooseImage(){
        randomNumber = Int(arc4random_uniform(10))
        if (randomNumber == lastRandomNumber){
            chooseImage()
        }
        lastRandomNumber = randomNumber
        imvImageView.image = imageArray[randomNumber!]
    }
    
    func setChoice(){
        chooseImage()
        animalChoice = animalNamesArray[randomNumber!]
        let randomWrongChoice = Int(arc4random_uniform(10))
        if (randomWrongChoice == randomNumber){
            setChoice()
        }
        wrongAnimalChoice = animalNamesArray[randomWrongChoice]
    }
    
    func setButtonTitles(){
        setChoice()
        buttonWithCorrectChoice = Int(arc4random_uniform(2))
        switch buttonWithCorrectChoice! {
        case 0:
            btnButton1.setTitle(animalChoice, for: UIControl.State.normal)
            btnButton2.setTitle(wrongAnimalChoice, for: UIControl.State.normal)
        case 1:
            btnButton1.setTitle(wrongAnimalChoice, for: UIControl.State.normal)
            btnButton2.setTitle(animalChoice, for: UIControl.State.normal)
        default:
            break
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        setButtonTitles()
        lblTitleLabel.text?.removeAll()
    }

}

