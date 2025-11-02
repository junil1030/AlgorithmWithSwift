//
//  Q38.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/2/25.
//

import Foundation

func Q38(_ num:Int) -> Int {
    var count = 0
    var ret = num
    
    while ret != 1 {
        if count == 500 {
            count = -1
            break
        }
        
        count += 1
        if ret % 2 == 0 {
            ret /= 2
        } else {
            ret *= 3
            ret += 1
        }
    }
    
    return count
}
