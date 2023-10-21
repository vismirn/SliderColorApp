//
//  MainViewController.swift
//  SliderColorApp
//
//  Created by Viktor Smirnov on 21.10.2023.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let changeVC = segue.destination as? ChangeColorViewController else { return }
        changeVC.delegate = self
        changeVC.viewColor = view.backgroundColor
    }
}

extension MainViewController: ChangeColorViewControllerDelegate {
    func getColor(for color: UIColor) {
        view.backgroundColor = color
    }
    
}
