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
        countRedLabel.text = String(format: "%.1f", redSlider.value)
        colorView.backgroundColor = .red.withAlphaComponent(CGFloat(redSlider.value))
//        colorView.backgroundColor = UIColor(red: 143/255, green: 94/255, blue: 66/255, alpha: CGFloat(redSlider.value))
    }
    @IBAction func greenSliderAction() {
        countGreenLabel.text = String(format: "%.1f", greenSlider.value)
        colorView.backgroundColor = .green.withAlphaComponent(CGFloat(greenSlider.value))
    }
    @IBAction func blueSliderAction() {
        countBlueLabel.text = String(format: "%.1f", blueSlider.value)
        colorView.backgroundColor = .blue.withAlphaComponent(CGFloat(blueSlider.value))
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

