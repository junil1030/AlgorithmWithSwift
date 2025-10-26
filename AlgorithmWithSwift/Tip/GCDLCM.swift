//
//  GCDLCM.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 6/3/25.
//

import Foundation

func GCD(_ min: Int, _ max: Int) -> Int {
    let res = min % max
    if res == 0 {
        return max
    }
    return GCD(max, res)
}

func GCD_2(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : GCD_2(b, a % b)
}

func LCM(_ a: Int, _ b: Int) -> Int {
    return (a * b) / GCD(a, b)
}
