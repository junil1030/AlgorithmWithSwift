//
//  Q18.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

func Q18(_ order:[String]) -> Int {
    var result = 0
    for str in order {
        if str.contains("cafelatte") {
            result += 5000
        } else {
            result += 4500
        }
    }
        
    return result}
