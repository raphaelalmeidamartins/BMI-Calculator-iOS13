//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Raphael Martins on 12/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var bmiValue = "0.0"
    
    let bmiLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.bmiLabel.text = self.bmiValue
        self.bmiLabel.textColor = .black
        self.bmiLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
    
        self.view.backgroundColor = .red
        self.view.addSubview(self.bmiLabel)
    }
}
