//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Raphael Martins on 15/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var BMIvalue: String = "0.0"
    var BMIColor: UIColor = .blue
    var BMIAdvice: String = ""

    @IBOutlet weak var resultBackground: UIImageView!

    @IBOutlet weak var bmiLabel: UILabel!

    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }
    
    func updateUI() {
        self.bmiLabel.text = self.BMIvalue
        self.messageLabel.text = self.BMIAdvice
        self.resultBackground.backgroundColor = self.BMIColor
    }

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
