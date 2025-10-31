//
//  Q34.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/31/25.
//

import Foundation

func Q34(_ array:[Int]) -> Int {
    var dict: [Int: Int] = [:]
    for i in array {
        if dict[i] != nil {
            dict [i]! += 1
        } else {
            dict[i] = 1
        }
    }
    
    let ret = dict.sorted { $0.value > $1.value }.map { $0 }
    if ret.count > 1, ret[0].value == ret[1].value {
        return -1
    }
    
    return ret[0].key
}
