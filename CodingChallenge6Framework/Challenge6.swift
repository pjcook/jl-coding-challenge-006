//
//  Challenge6.swift
//  CodingChallenge6Framework
//
//  Created by PJ Cook on 11/06/2019.
//  Copyright © 2019 Software101. All rights reserved.
//

import Foundation

public typealias Predicate<T> = ((T) -> Bool)

public class Challenge6 {
    public init() {}
    
    public func applyFilter<T>(_ filter: Predicate<T>, to input: [T]) -> [T] {
        var results = [T]()
        for item in input {
            if filter(item) {
                results.append(item)
            }
        }
        return results
    }
    
    public func applyFilterRecursive<T>(_ filter: Predicate<T>, to input: [T]) -> [T?] {
        var input = input
        guard !input.isEmpty, let item = input.popLast() else { return [] }
        return (filter(item) ? [item] : [nil]) + applyFilterRecursive(filter, to: input)
    }
}

public class Filters {
    public init() {}
    
    public func numberIsLessThan5(value: Int) -> Bool {
        return value < 5
    }
    
    public func valueIsG(value: String) -> Bool {
        return value == "g"
    }
}
