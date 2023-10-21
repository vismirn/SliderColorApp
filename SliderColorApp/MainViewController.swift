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
        let changeVC = segue.destination as? ChangeColorViewController
        changeVC?.delegate = self
    }
}

extension MainViewController: ChangeColorViewControllerDelegate {
    func getColor(for color: UIColor) {
        view.backgroundColor = color
    }
    
}
