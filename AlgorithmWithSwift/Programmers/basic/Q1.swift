//
//  Q1.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/15/25.
//

import Foundation

func Q1(_ s1: [String], _ s2: [String]) -> Int {
    let result = s1.filter(s2.contains)
    
    return result.count
}
