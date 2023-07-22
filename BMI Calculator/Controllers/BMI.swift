//
//  BMI.swift
//  BMI Calculator
//
//  Created by Raphael Martins on 15/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float) {
        self.value = value
        
        if self.value < 18.5 {
            self.advice = "Eat more pies!"
            self.color = .systemTeal
        } else if value < 24.9 {
            self.advice = "Fit as a fiddle!"
            self.color = .systemGreen
        } else {
            self.advice = "Eat les pies"
            self.color = .systemRed
        }
    }
}
