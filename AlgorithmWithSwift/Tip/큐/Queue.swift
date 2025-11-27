//
//  Queue.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/27/25.
//

import Foundation

struct Queue<T> {
    private var elements: [T] = []
    private var front = 0
    
    var isEmpty: Bool {
        elements.count - front < 1
    }
    
    var count: Int {
        elements.count - front
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    @discardableResult
    mutating func pop() -> T? {
        guard !isEmpty else { return nil }
        front += 1
        return elements[front - 1]
    }
    
    func top() -> T? {
        isEmpty ? nil : elements[front]
    }
}
