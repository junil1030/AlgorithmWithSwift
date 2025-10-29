//
//  Q32.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/29/25.
//

import Foundation

func Q32(_ picture:[String], _ k:Int) -> [String] {
    var result: [String] = []
    
    for str in picture { // str = ".xx...xx."
        var kStr = ""
        for char in str { // "."
            for i in 0..<k {
                kStr.append(char)
            }
        }
        for i in 0..<k {
            result.append(kStr)
        }
    }
    
    return result
}
