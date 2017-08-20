//
//  taskThree.swift
//  ArraysExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

func taskFive() {
    
    var counts = Array(repeating: 0, count: 10)
    var numbersArray = Array(repeating: 0, count: 20)

    numbersArray = numbersArray.map{ _ in Int(arc4random_uniform(10)) }
    
    print("Numbers generated:")
    for number in numbersArray {
        print(number)
        counts[number] += 1
    }

    for index in 0..<counts.count {
        print("Number of \(index)'s: \(counts[index])")
    }
}
