//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Raphael Martins on 15/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var BMIValue: Float = 0.0

    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        self.BMIValue = weight / pow(height, 2)
    }
    
    func getFormatedBMI() -> String {
        return String(format: "%.1f", self.BMIValue)
    }
}
