//
//  Q27.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/26/25.
//

import Foundation

func Q27(_ num:Int, _ total:Int) -> [Int] {
    let sum = num * (num - 1) / 2
    let start = (total - sum) / num
    return (0..<num).map { start + $0 }
}
