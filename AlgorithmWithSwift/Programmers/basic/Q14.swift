//
//  Q14.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/19/25.
//

import Foundation

func Q14(_ rank: [Int], _ attendance: [Bool]) -> Int {
    
    var resultAry: [Int] = []
    var current = 1
    while resultAry.count < 3 {
        for i in 1...rank.count {
            if rank[i - 1] == current {
                if attendance[i - 1] {
                    resultAry.append(i - 1)
                    current += 1
                } else {
                    current += 1
                }
            }
        }
    }
    
    return resultAry[0] * 10000 + resultAry[1] * 100 + resultAry[2]
}

func Q14_1(_ rank: [Int], _ attendance: [Bool]) -> Int {
    let stu = rank.enumerated()
        .filter { attendance[$0.offset] }
        .sorted(by: { $0.element < $1.element })
        .map { $0.offset }
    
    return stu[0] * 10000 + stu[1] * 100 + stu[2]
}
