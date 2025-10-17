//
//  Q3.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/15/25.
//

import Foundation

func Q3(_ n: Int) -> Int {
    return sqrt(Double(n)) == floor(sqrt(Double(n))) ? 1 : 2
}
