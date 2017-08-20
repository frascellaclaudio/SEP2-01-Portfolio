//
//  taskThree.swift
//  FileHandlingExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

func taskThree() {
    
    let filename = "data.txt"
    
    let fileIO = FileIO(for: .documentDirectory)
    if let fileContents = fileIO.read(from: filename) {
        let customers = fileContents.components(separatedBy: "\n")
        
        for customer in customers {
            let detail = customer.components(separatedBy: ";")
            print("Name: \(detail[0])\nAddress: \(detail[1])\nEmail: \(detail[2])\n")
        }
    }
}
