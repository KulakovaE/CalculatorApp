//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Darko Kulakov on 2019-11-05.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    var isFinishedTypeingNumber: Bool = true
    
    private var displayValue: Double {
        
        get {
            guard let currentDisplayValue = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a Double")
            }
            return currentDisplayValue
        }
        
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    private var calculatorLogic = CalculatorLogic()
    
    @IBAction func calButtonPressed(_ sender: UIButton) {
        
        isFinishedTypeingNumber = true
        calculatorLogic.setNumber(displayValue)
        
        if let calMethod = sender.currentTitle {
            
            if let result = calculatorLogic.calculate(symbol: calMethod) {
                 displayValue = result
            }
        }
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numberValue = sender.currentTitle {
            if isFinishedTypeingNumber {
                displayLabel.text = numberValue
                isFinishedTypeingNumber = false
            } else {
                
                if numberValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = (displayLabel.text ?? "") + numberValue
            }
        }
    }
}

