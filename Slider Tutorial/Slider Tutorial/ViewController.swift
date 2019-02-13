//
//  ViewController.swift
//  Slider Tutorial
//
//  Created by Julie Berry on 2/12/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSliderValueOUTLET: UILabel!
    @IBOutlet weak var sldSliderOUTLET: UISlider!
    @IBOutlet weak var txtNumberFieldOUTLET: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        modifyProperties()
    }
    
    // actions
    
    @IBAction func changeSliderValueACTION(_ sender: UISlider) {
        //
        displaySliderValue()
        changeBackgroundColor()
    }
    
    // functions
   
    func displaySliderValue() {
        // change slider increments
        // sets increments to 20 and rounds out to the nearest 20
        sldSliderOUTLET.value = 20 * roundf(sldSliderOUTLET.value / 20)
         // have the display slider value label display slider values
        let sliderValue = sldSliderOUTLET.value
        //lblSliderValueOUTLET.text = String(sliderValue)
        lblSliderValueOUTLET.backgroundColor = UIColor.init(hue: CGFloat(sliderValue), saturation: 1, brightness: 1, alpha: 1)
        //multiplyNumbers(value: sliderValue)
        
    }
    
    func multiplyNumbers(value : Float) {
        // do something
        let number = Float(txtNumberFieldOUTLET.text!)
        lblSliderValueOUTLET.text = String(number! * value)
    }
    
    func modifyProperties() {
//        sldSliderOUTLET.minimumValue = 0
//        sldSliderOUTLET.maximumValue = 20
        //sldSliderOUTLET.backgroundColor = UIColor.red
        //sldSliderOUTLET.isHidden = true
    }
    
    func changeBackgroundColor() {
        switch sldSliderOUTLET.value {
        case 0:
            //
            view.backgroundColor = UIColor.white
        case 20:
            //
            view.backgroundColor = UIColor.red
        case 40:
            view.backgroundColor = UIColor.blue
        case 60:
            view.backgroundColor = UIColor.green
        case 80:
            view.backgroundColor = UIColor.purple
        case 100:
            view.backgroundColor = UIColor.orange
        default:
            break
        }
    }
    
}

