//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let rounded = (sender.value * 100).rounded(.up) / 100
        self.heightLabel.text = "\(String(format: "%.2f", rounded))m"
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let rounded = (sender.value * 100).rounded(.up) / 100
        self.weightLabel.text = "\(String(format: "%.0f", rounded))Kg"
    }
}
