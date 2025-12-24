//
//  1158.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/24/25.
//

import Foundation

func q1158() {
    let input = readLine()!.split(separator: " ").map { Int($0) }
    let n = input[0]!; let k = input[1]!
    
    // 1, 2, 3, 4, 5, 6, 7
    var people = Array(1...n)
    var result: [Int] = []
    var index = 0

    while !people.isEmpty {
        index = (index + k - 1) % people.count
        result.append(people.remove(at: index))
    }
    
    let ret = result.map { String($0) }.joined(separator: ", ")
    print("<" + ret + ">")
}
