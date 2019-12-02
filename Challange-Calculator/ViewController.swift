//
//  ViewController.swift
//  Challange-Calculator
//
//  Created by Oscar Victoria Gonzalez  on 12/2/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

enum ChallengeType: Int {
    case elevation = 0
    case distance = 1
}

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControll: UISegmentedControl!
    @IBOutlet weak var metricTextField: UITextField!
    @IBOutlet weak var numberOfWeeksTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    var currentChallenge: ChallengeType = ChallengeType.elevation {
        didSet {
            // TODO - calculate()
            calculateChallenge()
        }
    }
    

    @IBAction func calculateChallengePressed(_ sender: UIButton) {
        calculateChallenge()
    }
    
    
    func calculateChallenge() {
        // get the metric and the number of days from the textfields
        
        guard let metric = Double(metricTextField.text ?? ""),
            let numberOfWeeks = Int(numberOfWeeksTextField.text ?? "") else { return }
        
        let challenge = Challenge()
        
        let weeklyTraining = challenge.calculateWeeklyTraining(for: metric, and: numberOfWeeks)
        
        switch currentChallenge {
        case .elevation:
            messageLabel.text = "weekly training: \(weeklyTraining) feet"
        case .distance:
            messageLabel.text = "Weekly training: \(weeklyTraining) miles"
        }
    }
    
    @IBAction func segmentedControllAction(_ sender: UISegmentedControl) {
        currentChallenge = ChallengeType(rawValue: sender.selectedSegmentIndex) ?? ChallengeType.elevation
    }
    
    
}

