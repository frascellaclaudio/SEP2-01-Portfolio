//
//  taskOne.swift
//  FileHandlingExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

func taskOne() {
    
    var filename = ""
    
    while filename == "" {
        print("Enter the name of the input file located in the documents folder: ", terminator: "")
        if let consoleInput = readLine() {
            filename = consoleInput
        }
    }
    
    let fileIO = FileIO(for: .documentDirectory)
    if let fileContents = fileIO.read(from: filename) {
        print(fileContents)
    }
}
