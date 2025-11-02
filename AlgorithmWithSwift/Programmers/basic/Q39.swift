//
//  Q39.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/2/25.
//

import Foundation

func Q39(_ s:String) -> String {
    var str = Array(s)
    var result: [Character] = []
    var count = 0
    
    for char in str {
        if char == " " {
            count = 0
            result.append(" ")
        } else if count % 2 == 0 {
            result.append(Character(char.uppercased()))
            count += 1
        } else {
            result.append(Character(char.lowercased()))
            count += 1
        }
    }
    
    return String(result)
}
