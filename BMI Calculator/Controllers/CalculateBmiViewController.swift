//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateBmiViewController: UIViewController {
    var calculator = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!

    @IBOutlet weak var heightSlider: UISlider!

    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let rounded = (sender.value * 100).rounded(.up) / 100
        self.heightLabel.text = "\(String(format: "%.2f", rounded))m"
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let rounded = (sender.value * 100).rounded(.up) / 100
        self.weightLabel.text = "\(String(format: "%.0f", rounded))Kg"
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.calculator.calculateBMI(heightSlider.value, weightSlider.value)
        self.performSegue(withIdentifier: "getResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getResult" {
            let destination = segue.destination as! ResultViewController
            destination.BMIvalue = self.calculator.getFormatedBMI()
        }
    }
}
