//
//  Q10.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/17/25.
//

import Foundation

func Q10(_ score: [[Int]]) -> [Int] {
    var answer: [Int] = []
    
    var result: [Double] = []
    for i in score {
        result.append(Double(i[0] + i[1]) / 2.0)
    }
    
    for i in result {
        answer.append(result.filter { i < $0 }.count + 1)
    }
    
    return answer
}

// Double로 하지 않고 int로 할 경우, 2와 2.5 식별이 불가능 함.
