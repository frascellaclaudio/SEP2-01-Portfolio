//
//  taskTwo.swift
//  ArraysExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

func taskFour() {
    
    var evenNumberArray = [Int]()

    for index in 0...6 {
        var number: Int?
        
        repeat {
            print("Enter the number \(index + 1): ", terminator: "")
            if let input = Int(readLine()!) {
                number = input
                if number! >= 0  && (number! % 2 == 0) {
                    evenNumberArray.append(number!)
                }
            }
        } while number == nil
    }
    
    let evenNumberArrayStr = evenNumberArray.map( { String($0) } ).joined(separator: ", ")
    print("\nEven numbers: \(evenNumberArrayStr)")
}
