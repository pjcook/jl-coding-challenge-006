//
//  main.swift
//  Coding Challenge 6
//
//  Created by PJ Cook on 06/06/2019.
//  Copyright © 2019 Software101. All rights reserved.
//

import Foundation

print("Start...")

typealias Filter<T> = ((T) -> Bool)
typealias InputType<T> = [T]

// myFilter
func myFilter<T>(input: [T], filter: Filter<T>) -> [T] {
    var results = [T]()
    for item in input {
        if filter(item) {
            results.append(item)
        }
    }
    return results
}

// Filter functions
func numberIsLessThan5(value: Int) -> Bool {
    return value < 5
}

func valueIsG(value: String) -> Bool {
    return value == "g"
}

// Execute tests
var start = Date()

let numbers: [Int] = Array(0..<10000000)
print("Begin test 1")
start = Date()
print(myFilter(input: numbers, filter: numberIsLessThan5))
print(abs(start.timeIntervalSinceNow))

print("")

let input: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
print("Begin test 2")
start = Date()
print(myFilter(input: input, filter: valueIsG))
print(abs(start.timeIntervalSinceNow))
