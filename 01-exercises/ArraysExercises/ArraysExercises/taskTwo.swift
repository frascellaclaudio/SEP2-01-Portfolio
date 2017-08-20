//
//  taskTwo.swift
//  ArraysExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

func taskTwo() {
    
    let pizzaSizes = ["S", "M", "L", "X"]
    let pizzaPrices = [6.99, 8.99, 12.50, 15.0]
    
    print("Enter the size of the pizza: ", terminator: "")
    if let inputSize = readLine() {
        if let index = pizzaSizes.index(of: inputSize) {
            print("The price is: $\(pizzaPrices[index])")
        } else {
            print("Invalid pizza size!!")
        }
    }
}
