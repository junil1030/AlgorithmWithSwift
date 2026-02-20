//
//  자연수뒤집어배열로만들기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

import Foundation

func 자연수뒤집어배열로만들기(_ n: Int64) -> [Int] {
    return String(n).map { String($0) }.map { Int($0)! }.reversed()
}
