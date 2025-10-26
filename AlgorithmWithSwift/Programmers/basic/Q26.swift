//
//  Q26.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/26/25.
//

import Foundation

func Q26(_ quiz:[String]) -> [String] {
    var result: [String] = []
    
    for str in quiz {
        var subStr = str.split(separator: " ")
        let x = Int(subStr[0])!
        let op = subStr[1]
        let y = Int(subStr[2])!
        let ret = Int(subStr[4])!
        
        if op == "+" {
            if x + y == ret {
                result.append("O")
            } else {
                result.append("X")
            }
        } else {
            if x - y == ret {
                result.append("O")
            } else {
                result.append("X")
            }
        }
    }
    
    return result
}
