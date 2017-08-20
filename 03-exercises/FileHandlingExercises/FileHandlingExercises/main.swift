//
//  main.swift
//  FileHandlingExercises
//
//  Created by Frascella Claudio on 20/8/17.
//  Copyright © 2017 Frascella Claudio. All rights reserved.
//

import Foundation

var taskNumber = ""

while taskNumber == "" || taskNumber !=  "end" {
    print("Choose task (1/2/3/end): ", terminator: "")
    taskNumber = readLine()!
    switch taskNumber {
    case "1":
        taskOne()
    case "2":
        taskTwo()
    case "3":
        taskThree()
    case "end":
        break
    default:
        taskNumber = ""
    }
}

class FileIO {
    private var fileManager: FileManager
    private var directory: URL

    init(for directory: FileManager.SearchPathDirectory) {
        // get the FileManager object
        self.fileManager = FileManager.default
        
        // get the documents folder url
        self.directory = try! fileManager.url(for: directory, in: .userDomainMask, appropriateFor: nil, create: true)
    }
    
    func read(from filename: String) -> String? {
        // create the destination url for the text file to be read
        let fileURL = directory.appendingPathComponent(filename)
        do {
            let fileContents = try String(contentsOf: fileURL)
            return fileContents
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
    func write(this contents: String, to filename: String) -> Bool {
        let success = true
        // create the destination url for the text file to be read
        let fileURL = directory.appendingPathComponent(filename)
        do {
            try contents.write(to: fileURL, atomically: true, encoding: .utf8)
            return success
        } catch {
            print(error.localizedDescription)
            return false
        }
    }
}
