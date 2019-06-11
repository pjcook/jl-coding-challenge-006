//
//  CodingChallenge6FrameworkTests.swift
//  CodingChallenge6FrameworkTests
//
//  Created by PJ Cook on 11/06/2019.
//  Copyright © 2019 Software101. All rights reserved.
//

import XCTest
@testable import CodingChallenge6Framework

class CodingChallenge6FrameworkTests: XCTestCase {
    let challenge = Challenge6()
    let filters = Filters()

    //MARK:- Filter tests for lessThan5 filter
    func test_filter_lessThan5_with_empty_array() {
        let input: [Int] = []
        let result = challenge.applyFilter(filters.numberIsLessThan5, to: input)
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_filter_lessThan5_with_single_result() {
        let input: [Int] = [1]
        let result = challenge.applyFilter(filters.numberIsLessThan5, to: input)
        XCTAssertEqual(result.count, 1)
    }
    
    func test_filter_lessThan5_with_single_invalid_result() {
        let input: [Int] = [10]
        let result = challenge.applyFilter(filters.numberIsLessThan5, to: input)
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_filter_lessThan5_with_many_results() {
        let input: [Int] = Array(0..<10)
        let result = challenge.applyFilter(filters.numberIsLessThan5, to: input)
        XCTAssertEqual(result.count, 5)
    }

    //MARK:- Filter tests for valueIsG filter
    func test_filter_valueIsG_with_empty_array() {
        let input: [String] = []
        let result = challenge.applyFilter(filters.valueIsG, to: input)
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_filter_valueIsG_with_single_result() {
        let input: [String] = ["g"]
        let result = challenge.applyFilter(filters.valueIsG, to: input)
        XCTAssertEqual(result.count, 1)
    }
    
    func test_filter_valueIsG_with_single_invalid_result() {
        let input: [String] = ["G"]
        let result = challenge.applyFilter(filters.valueIsG, to: input)
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_filter_valueIsG_with_single_result_large_input() {
        let input: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        let result = challenge.applyFilter(filters.valueIsG, to: input)
        XCTAssertEqual(result.count, 1)
    }
    
    func test_filter_valueIsG_with_many_results() {
        let input: [String] = ["g","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","g","y","z"]
        let result = challenge.applyFilter(filters.valueIsG, to: input)
        XCTAssertEqual(result.count, 3)
    }
    
    //MARK:- Recursive Filter tests for lessThan5 filter
    func test_recursive_filter_lessThan5_with_empty_array() {
        let input: [Int] = []
        let result = challenge.applyFilterRecursive(filters.numberIsLessThan5, to: input).compactMap { $0 }
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_recursive_filter_lessThan5_with_single_result() {
        let input: [Int] = [1]
        let result = challenge.applyFilterRecursive(filters.numberIsLessThan5, to: input).compactMap { $0 }
        XCTAssertEqual(result.count, 1)
    }
    
    func test_recursive_filter_lessThan5_with_single_invalid_result() {
        let input: [Int] = [10]
        let result = challenge.applyFilterRecursive(filters.numberIsLessThan5, to: input).compactMap { $0 }
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_recursive_filter_lessThan5_with_many_results() {
        let input: [Int] = Array(0..<10)
        let result = challenge.applyFilterRecursive(filters.numberIsLessThan5, to: input).compactMap { $0 }
        XCTAssertEqual(result.count, 5)
    }
    
    //MARK:- Recursive Filter tests for valueIsG filter
    func test_recursive_filter_valueIsG_with_empty_array() {
        let input: [String] = []
        let result = challenge.applyFilterRecursive(filters.valueIsG, to: input).compactMap { $0 }
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_recursive_filter_valueIsG_with_single_result() {
        let input: [String] = ["g"]
        let result = challenge.applyFilterRecursive(filters.valueIsG, to: input).compactMap { $0 }
        XCTAssertEqual(result.count, 1)
    }
    
    func test_recursive_filter_valueIsG_with_single_invalid_result() {
        let input: [String] = ["G"]
        let result = challenge.applyFilterRecursive(filters.valueIsG, to: input).compactMap { $0 }
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_recursive_filter_valueIsG_with_single_result_large_input() {
        let input: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        let result = challenge.applyFilterRecursive(filters.valueIsG, to: input).compactMap { $0 }
        XCTAssertEqual(result.count, 1)
    }
    
    func test_recursive_filter_valueIsG_with_many_results() {
        let input: [String] = ["g","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","g","y","z"]
        let result = challenge.applyFilterRecursive(filters.valueIsG, to: input).compactMap { $0 }
        XCTAssertEqual(result.count, 3)
    }
}
