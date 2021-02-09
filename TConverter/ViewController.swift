//
//  ViewController.swift
//  TConverter
//
//  Created by Андрей Моисеев on 07.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = -50
            slider.maximumValue = 50
            slider.value = 0
            
        }
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        let tCelsius = Int(sender.value)
        cenliusLabel.text = "\(tCelsius)ºC"
        let fCelsius = Int(slider.value * 1.8 + 32)
        fahrenheitLabel.text = "\(fCelsius)ºF"
        
    }
}

