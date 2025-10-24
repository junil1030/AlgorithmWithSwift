//
//  Q23.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

func Q23(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    
    var cur = 0
    for num in num_list {
        result[cur].append(num)
        if result[cur].count == n {
            cur += 1
        }
    }
    
    return result
}
