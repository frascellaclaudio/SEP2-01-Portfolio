//
//  taskTwo.swift
//  FileHandlingExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

func taskTwo() {
    
    var inputFilename = ""
    var outputFilename = ""
    
    while inputFilename == "" {
        print("Enter the name of the input file: ", terminator: "")
        if let consoleInput = readLine() {
            inputFilename = consoleInput
        }
    }
    
    while outputFilename == "" {
        print("Enter the name of the output file: ", terminator: "")
        if let consoleInput = readLine() {
            outputFilename = consoleInput
        }
    }
    
    let fileIO = FileIO.init(for: .documentDirectory)
    if let inputFileContents = fileIO.read(from: inputFilename) {
        if fileIO.write(this: inputFileContents, to: outputFilename) {
            print("File copied successfully")
        }
    }
}
