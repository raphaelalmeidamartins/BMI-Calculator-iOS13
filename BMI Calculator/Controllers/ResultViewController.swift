//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Raphael Martins on 15/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: Float = 0.0

    @IBOutlet weak var bmiLabel: UILabel!

    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }
    
    func updateUI() {
        self.bmiLabel.text = String(format: "%.1f", self.bmiValue)
    }
}
