//
//  ViewController.swift
//  Nature Scenes Picker Tutorial
//
//  Created by Julie Berry on 2/23/19.
//  Copyright © 2019 Julie Berry. All rights reserved.
//

// TODO: Set a default cover image
// TODO: set a hue for bg 

import UIKit

// add in dependencies to open picker libraries
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    // OUTLETS
    @IBOutlet weak var ivwImageViewOUTLET: UIImageView!
    @IBOutlet weak var pkrImagePickerOUTLET: UIPickerView!
    
    // GLOBALS
    
    // data source as string array
    var listOfPictures : [String] = [
        "Beach",
        "City",
        "Desert",
        "Forest",
        "Jungle",
        "Mountain",
        "Ocean",
        "Prairies",
        "Wheel"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // designating delegate and data source
        self.pkrImagePickerOUTLET.delegate = self
        self.pkrImagePickerOUTLET.dataSource = self
        // change the image view alpha (or change it in the Attributes Inspector)
        // ivwImageViewOUTLET.alpha = 6.0
    }

    // PICKER FUNCTIONS
    
    // number of components (column)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // how many rows (images) in the picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listOfPictures.count
    }
    
    // asking for the title of each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listOfPictures[row]
    }
    
    // what happens when row is selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // switch statement encompasing all cases in the data source
        switch row {
        case 0:
            // display Beach image
            ivwImageViewOUTLET.image = UIImage(named: "Beach")
            //ivwImageViewOUTLET.image = Beach
        case 1:
            // display City image
            ivwImageViewOUTLET.image = UIImage(named: "City")
            //ivwImageViewOUTLET.image = City
        case 2:
            // display Desert image
            ivwImageViewOUTLET.image = UIImage(named: "Desert")
            //ivwImageViewOUTLET.image = Desert
        case 3:
            // display Forest image
            ivwImageViewOUTLET.image = UIImage(named: "Forest")
            //ivwImageViewOUTLET.image = Forest
        case 4:
            // display Jungle image
            ivwImageViewOUTLET.image = UIImage(named: "Jungle")
            //ivwImageViewOUTLET.image = Jungle
        case 5:
            // display Mountain image
            ivwImageViewOUTLET.image = UIImage(named: "Mountain")
            //ivwImageViewOUTLET.image = Mountain
        case 6:
            // display Ocean image
            ivwImageViewOUTLET.image = UIImage(named: "Ocean")
            //ivwImageViewOUTLET.image = Ocean
        case 7:
            // display Prairies image
            ivwImageViewOUTLET.image = UIImage(named: "Prairies")
            //ivwImageViewOUTLET.image = Prairies
        case 8:
            // display Wheel image
            ivwImageViewOUTLET.image = UIImage(named: "Wheel")
        //ivwImageViewOUTLET.image = Wheel
        default:
            break
        }
    }
    
    // change the picker view Attributed Text
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        // make a label
        let pickerLabel = UILabel()
        // specify font name and boldness and size
        let labelText = NSMutableAttributedString(string: listOfPictures[row], attributes: [NSAttributedString.Key.font : UIFont(name: "Avenir-Heavy", size: 25)!])
        // set font to label text
        pickerLabel.attributedText = labelText
        // align center
        pickerLabel.textAlignment = .center
        return pickerLabel
    }
    
    
}

