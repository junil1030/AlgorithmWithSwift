//
//  2440.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/7/25.
//

import Foundation

func q2440() {
    let input = Int(readLine()!)!
    
    for i in (1...input).reversed() {
        let stars = String(repeating: "*", count: i)
        print(stars)
    }
}
