//
//  taskOne.swift
//  ArraysExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

func taskOne() {
    
    var randomNumArray = Array(repeating: 0, count: 10)

    for index in 0..<randomNumArray.count {
        randomNumArray[index] = Int(arc4random_uniform(70)) + 1
    }
    
    print("Integers first to last")
    for number in randomNumArray {
        print(number)
    }
    
    print("Integers last to first")
    for number in randomNumArray.reversed() {
        print(number)
    }
}
