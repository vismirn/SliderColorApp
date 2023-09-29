//
//  ViewController.swift
//  SliderColorApp
//
//  Created by Viktor Smirnov on 29.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var countRedLabel: UILabel!
    @IBOutlet weak var countGreenLabel: UILabel!
    @IBOutlet weak var countBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameInit()
    }

    @IBAction func redSliderAction() {
        
    }
    @IBAction func greenSliderAction() {
        
    }
    @IBAction func blueSliderAction() {
        
    }
    
    private func nameInit() {
        redLabel.text = "red"
        greenLabel.text = "green"
        blueLabel.text = "blue"
        countRedLabel.text = String(redSlider.value)
        countGreenLabel.text = String(greenSlider.value)
        countBlueLabel.text = String(blueSlider.value)
    }
}

