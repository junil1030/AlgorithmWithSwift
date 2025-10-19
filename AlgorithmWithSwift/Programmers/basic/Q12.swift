//
//  Q12.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/19/25.
//

import Foundation

func Q12(_ array: [Int], _ n: Int) -> Int {
    var dist: [Int] = []
    
    for i in array {
        dist.append(i - n)
    }
    
    var minDist = Int.max
    var result = 0
    for index in 0..<dist.count {
        if abs(minDist) > abs(dist[index]) || (abs(minDist) == abs(dist[index])) && array[index] < result {
            minDist = dist[index]
            result = array[index]
        }
    }
    
    return result
}

func Q12_1(_ array: [Int], _ n: Int) -> Int {
    return array.min(by: { (abs($0 - n), $0) < (abs($1 - n), $1) })!
}
// min(by: { A < B })
// A < B가 true -> A가 더 작다 -> A 승리 -> A 유지
// A < B가 false -> B가 더 작다 -> B 승리 -> B 유지

// 마찬가지로 오름차순, 내림차순에서도
// 오름차순 정렬 (작은 것부터)
// sorted(by: { $0 < $1 })  // true면 $0을 앞에 → 작은 게 앞으로
// [1, 2, 3, 4, 5]
// 내림차순 정렬 (큰 것부터)
// sorted(by: { $0 > $1 })  // true면 $0을 앞에 → 큰 게 앞으로
// [5, 4, 3, 2, 1]
