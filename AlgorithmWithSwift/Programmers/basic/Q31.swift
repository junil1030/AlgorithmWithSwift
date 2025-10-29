//
//  Q31.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/29/25.
//

import Foundation

func Q31(_ arr:[Int], _ query:[Int]) -> [Int] {
    var start = 0
    var end = arr.count - 1
    
    for (index, queryValue) in query.enumerated() {
        if index % 2 == 0 { // query값이 짝수일 때
            end = start + queryValue
        } else { // query값이 홀수일 때
            start = start + queryValue
        }
    }
    
    return Array(arr[start...end])
}
