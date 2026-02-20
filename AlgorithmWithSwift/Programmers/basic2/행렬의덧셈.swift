//
//  행렬의덧셈.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

import Foundation

func 행렬의덧셈(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let counti = arr1.count
    let countj = arr1[0].count
    var ret: [[Int]] = .init(repeating: .init(repeating: 0, count: countj), count: counti)
    for i in 0..<counti {
        for j in 0..<countj {
            ret[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return ret
}
