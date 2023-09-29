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
        countRedLabel.text = String(format: "%.2f", redSlider.value)
        colorView.backgroundColor = .red.withAlphaComponent(CGFloat(redSlider.value))
    }
    @IBAction func greenSliderAction() {
        countGreenLabel.text = String(format: "%.2f", greenSlider.value)
        colorView.backgroundColor = .green.withAlphaComponent(CGFloat(greenSlider.value))
    }
    @IBAction func blueSliderAction() {
        countBlueLabel.text = String(format: "%.2f", blueSlider.value)
        colorView.backgroundColor = .blue.withAlphaComponent(CGFloat(blueSlider.value))
    }
    
    private func nameInit() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        redLabel.text = "red"
        greenLabel.text = "green"
        blueLabel.text = "blue"
        
        countRedLabel.text = String(format: "%.2f", redSlider.value)
        countGreenLabel.text = String(format: "%.2f", greenSlider.value)
        countBlueLabel.text = String(format: "%.2f", blueSlider.value)
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
    }
}


