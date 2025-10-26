//
//  Q25.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/25/25.
//

import Foundation

private func gcd(_ min: Int, _ max: Int) -> Int {
    let res = min % max
    if res == 0 {
        return max
    }
    return gcd(max, res)
}

func Q25(_ a:Int, _ b:Int) -> Int {
    let gcdNum = gcd(a, b)
    
    var result = b / gcdNum
    while result % 2 == 0 {
        result /= 2
    }
    while result % 5 == 0 {
        result /= 5
    }
    
    return result == 1 ? 1 : 2
}
