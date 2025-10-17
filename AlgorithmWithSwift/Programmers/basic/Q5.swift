//
//  Q5.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/15/25.
//

import Foundation

func Q5(_ numbers: [Int], _ k: Int) -> Int {
    
    if k == 1 { return numbers[0] }
    
    let a = 1 + ((k - 1) * 2)
    let num = a % numbers.count
    
    return numbers[num == 0 ? numbers.count - 1 : num - 1]
}
