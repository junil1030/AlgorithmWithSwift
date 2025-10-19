//
//  Q11.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/19/25.
//

import Foundation

var cnt = 0
func go(_ num: Int) {
    if num == 1 { return }
    
    cnt += 1
    if num % 2 == 0 { // 짝수
        go(num / 2)
    } else {
        go((num - 1) / 2)
    }
}

func Q11(_ num_list: [Int]) -> Int {
    for i in num_list {
        go(i)
    }
    return cnt
}
