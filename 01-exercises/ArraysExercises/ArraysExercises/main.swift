//
//  main.swift
//  ArraysExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

var taskNumber = ""

while taskNumber == "" || taskNumber !=  "end" {
    print("Choose task (1/2/3/4/5/end): ", terminator: "")
    taskNumber = readLine() ?? ""
    switch taskNumber {
    case "1":
        taskOne()
    case "2":
        taskTwo()
    case "3":
        taskThree()
    case "4":
        taskFour()
    case "5":
        taskFive()
    case "end":
        break
    default:
        taskNumber = ""
    }
}
