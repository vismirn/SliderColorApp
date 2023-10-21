//
//  ViewController.swift
//  SliderColorApp
//
//  Created by Viktor Smirnov on 29.09.2023.
//

// +1. Определить кто будет директором, кто будет передавать ответственность. +
// +2. Нужно создать протокол для директора.+
// +3. Наполнить протокол правилами для взаимодействия с другим экраном. (Создать методы, и вычесляемые свойства внутри протокола)
// +4. Создаем у директора ссылку на протокол. (Не инициализированое свойство)
// 5. Нужно определить эвент у директора по которому мы будем заставлять работника что то сделать.
// 6. Подписать под протокол нашего сотрудника. И реализовать методы этого протокола.
// 7. Инициализировать свойство delegate.

import UIKit

protocol ChangeColorViewControllerDelegate: AnyObject {
    func getColor(for color: UIColor)
    
}



class ChangeColorViewController: UIViewController {
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
    
    weak var delegate: ChangeColorViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameInit()
    }

    @IBAction func redSliderAction() {
        countRedLabel.text = String(format: "%.2f", redSlider.value)
        colorView.backgroundColor = .red.withAlphaComponent(CGFloat(redSlider.value))
        forColorView()
    }
    @IBAction func greenSliderAction() {
        countGreenLabel.text = String(format: "%.2f", greenSlider.value)
        colorView.backgroundColor = .green.withAlphaComponent(CGFloat(greenSlider.value))
        forColorView()
    }
    @IBAction func blueSliderAction() {
        countBlueLabel.text = String(format: "%.2f", blueSlider.value)
        colorView.backgroundColor = .blue.withAlphaComponent(CGFloat(blueSlider.value))
        forColorView()
    }
    
    @IBAction func doneButtonAction() {
        let needColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        delegate?.getColor(for: needColor)
        navigationController?.popViewController(animated: true)
    }
    
    private func nameInit() {
        forColorView()
        
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
    
    private func forColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}


