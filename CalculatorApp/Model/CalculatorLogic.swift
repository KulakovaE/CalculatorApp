//
//  CalculatorLogic.swift
//  CalculatorApp
//
//  Created by Elena Kulakova on 2019-12-14.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    func calculate(symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        }
        return nil
    }
    
    
}
