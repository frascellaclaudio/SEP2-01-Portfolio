	//
//  taskThree.swift
//  ArraysExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation
    
func taskThree() {
    
    var scoresArray = [Int]()
    var score = 0
    
    repeat {
        print("Enter the score: ", terminator: "")
        if let input = Int(readLine()!) {
            score = input
            if score >= 0 {
                scoresArray.append(score)
            }
        }
    } while score >= 0 && scoresArray.count != 100

    let average = Double(scoresArray.reduce(0, +)) / Double(scoresArray.count)
    let aboveAverageCount = scoresArray.filter( { Double($0) >= average } ).count
    let belowAverageCount = scoresArray.filter( { Double($0) < average } ).count
    
    print("\nAverage: \(average)")
    print("Scores above or equal to the average: \(aboveAverageCount)")
    print("Scores below the average: \(belowAverageCount)")
}
        
