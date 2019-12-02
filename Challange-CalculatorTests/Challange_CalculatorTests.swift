//
//  Challange_CalculatorTests.swift
//  Challange-CalculatorTests
//
//  Created by Oscar Victoria Gonzalez  on 12/2/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import XCTest
// @testable is a compiler director, enables this test suite have access to the ChallangeCalculator modulo
@testable import Challange_Calculator

class Challange_CalculatorTests: XCTestCase {

    override func setUp() {
      print("set up- before each test is run")
    }

    override func tearDown() {
       print("called after test is completed")
    }
    
    func testAddTwoNumbers() {
        // arrange your test in the following format:
        
        // arrange (given) - set up constant variables and the system on the test.
        let suit = Challenge()
        let num1 = 10
        let num2 = 5
        let expectedResult = 15
        
        // act - (when) perform workload
        let result = suit.addTwoNumbers(num1: num1, num2: num2)
        
        // asert (then) - test for given condition
        XCTAssertEqual(expectedResult, result, "\(result) should be \(expectedResult)")
    }
    
    func testCalculateWeeklyTraining() {
        // Arrange
        // Create an instanc ef Challenge
        let sut = Challenge()
        let sutExpectedAverage = 2320
        let metric = 11_602 // overall elevation challenge
        let numberOfWeeksForChallege = 5 // weeks
        // Act
        let weeklyTraining = sut.calculateWeeklyTraining(for: Double(metric), and: numberOfWeeksForChallege)
        
        // Assert
       XCTAssertEqual(sutExpectedAverage, weeklyTraining, "\(weeklyTraining) should be equal to \(sutExpectedAverage)")
    }
    
    // Write a test to validate that entering 0 is handled without crashes
    
    func testDivisionByZero() {
        // Arrange
        let sut = Challenge()
        let sutExpectedAverage = -1
        let metric = 11_602
        let numberOfWeeksForChallenge = 0
        
        // Act
        let weeklyTraining = sut.calculateWeeklyTraining(for: Double(metric), and: numberOfWeeksForChallenge)
        
        // Assert
        XCTAssertEqual(weeklyTraining, sutExpectedAverage, "\(weeklyTraining) should be equal to \(sutExpectedAverage)")
    }
// TDD - Test Driven Development:
    /*
     You start off writtig a unit test until it fails (or a compiler error), then go to production code e.g Challenge.swift file, fix the failure and continue the cycle
     */
    
    func testAverageDailyMetric() {
        // arrange
        
        let sut = Challenge()
        let sutWeeklyTotalMetric = 2320
        let expectedDailyAverage = 773
        let numberOfWorkoutDays = 3
        
        // act
        // function expects to return 773
        let averageDailyTraining = sut.averageTrainingPerWeek(challengeMetric: sutWeeklyTotalMetric, numberOfWorkoutDays: numberOfWorkoutDays)
        
        
        // assert
        XCTAssertEqual(expectedDailyAverage, averageDailyTraining)
    }
}

