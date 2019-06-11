//
//  main.swift
//  Coding Challenge 6
//
//  Created by PJ Cook on 06/06/2019.
//  Copyright © 2019 Software101. All rights reserved.
//

import Foundation
import CodingChallenge6Framework

print("Start...")
let challenge = Challenge6()
let filters = Filters()

// Execute tests
var start = Date()

let numbers: [Int] = Array(0..<1000)
print("Begin test 1")
start = Date()
print(challenge.applyFilter(filters.numberIsLessThan5, to: numbers))
print(abs(start.timeIntervalSinceNow))

print("")

print("Begin test 2")
start = Date()
print(challenge.applyFilterRecursive(filters.numberIsLessThan5, to: numbers).compactMap { $0 })
print(abs(start.timeIntervalSinceNow))

print("")

let input: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
print("Begin test 3")
start = Date()
print(challenge.applyFilter(filters.valueIsG, to: input))
print(abs(start.timeIntervalSinceNow))

print("")
print("Begin test 4")
start = Date()
print(challenge.applyFilterRecursive(filters.valueIsG, to: input).compactMap { $0 })
print(abs(start.timeIntervalSinceNow))


/*
 @gareth rowlands
 Looks like you understood it to me!
 
 You named functions T -> Bool as 'Filter' but they are commonly known as predicates, so you could consider changing your typealias.
 
 I don't think you use InputType, do you?
 
 Why not add a unit test framework and make some unit tests with assertions?
 
 Can you make myFilter recursive? What are the consequences?
 */
