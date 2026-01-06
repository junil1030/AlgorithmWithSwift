//
//  21921.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 1/6/26.
//

import Foundation

func q21921() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]; let x = input[1]
    
    var pSum: [Int] = []
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    pSum.append(input2[0])
    
    for i in 1..<input2.count {
        pSum.append(pSum[i - 1] + input2[i])
    }
    
    var result = Int.min
    var head = x - 1
    while head < n {
        if head - x < 0 {
            result = max(result, pSum[head])
        } else {
            result = max(result, pSum[head] - pSum[head - x])
        }
        head += 1
    }
    
    var count = 0
    head = x - 1
    while head < n {
        if head - x < 0 {
            if result == pSum[head] { count += 1 }
        } else {
            if result == pSum[head] - pSum[head - x] { count += 1 }
        }
        head += 1
    }
    
    if result <= 0 {
        print("SAD")
    } else {
        print(result)
        print(count)
    }
}
