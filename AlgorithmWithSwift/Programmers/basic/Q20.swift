//
//  Q20.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

func Q20(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        
        for i in s...e {
            result[i] += 1
        }
    }
    
    return result}
