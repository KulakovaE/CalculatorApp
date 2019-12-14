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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calButtonPressed(_ sender: UIButton) {
    
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numberValue = sender.currentTitle {
            if isFinishedTypeingNumber {
                displayLabel.text = numberValue
                isFinishedTypeingNumber = false
            } else {
                displayLabel.text = (displayLabel.text ?? "") + numberValue
            }
        }
    }
}

