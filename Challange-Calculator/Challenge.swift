//
//  Challenge.swift
//  Challange-Calculator
//
//  Created by Oscar Victoria Gonzalez  on 12/2/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

struct Challenge {
    func addTwoNumbers(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func calculateWeeklyTraining(for metric: Double, and weeks: Int) -> Int {
        // refactor to guard against 0 weeks
        guard weeks > 0 else  { return -1 }
        // red (faild test), green (passes test), refactor (rewrite, optimize)
        return Int(metric) / weeks // average metric (elevation, distance) per week
    }
    
    func averageTrainingPerWeek(challengeMetric: Int, numberOfWorkoutDays: Int) -> Int {
        // guard against zero and letters
        // refactor to guard for valid days of the week 1...7
        guard (1...7).contains(numberOfWorkoutDays) else { return -1 } 
        return challengeMetric / numberOfWorkoutDays
    }
}
