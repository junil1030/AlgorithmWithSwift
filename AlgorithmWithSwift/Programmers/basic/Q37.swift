//
//  Q37.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/2/25.
//

import Foundation

func Q37(_ n:Int) -> Int {
    var dict: [Int: Int] = [:]
    
    dict[0] = 0
    for i in 1...n {
        dict[i] = dict[i-1]! + 1
        
        while dict[i]! % 3 == 0 || String(dict[i]!).contains("3") {
            dict[i]! += 1
        }
    }
    
    return dict[n]!
}
