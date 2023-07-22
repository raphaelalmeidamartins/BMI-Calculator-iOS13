//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Raphael Martins on 15/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    private var currentBMI: BMI?

    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        self.currentBMI = BMI(value: weight / pow(height, 2))
    }
    
    func getFormattedBMI() -> String {
        return String(format: "%.1f", self.currentBMI?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return self.currentBMI?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return self.currentBMI?.color ?? .blue
    }
}
