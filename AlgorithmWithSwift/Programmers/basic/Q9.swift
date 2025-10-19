//
//  Q9.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/17/25.
//

import Foundation

func Q9(_ emergency:[Int]) -> [Int] {
    
    let soltedEmergency = emergency.sorted { $0 > $1 }
    var dict: [Int: Int] = [:]
    for i in 1...emergency.count {
        dict[soltedEmergency[i - 1]] = i
    }
    
    let result = emergency.map { dict[$0]! }
    return result
}

// 다른 사람 풀이
// 이 환자의 순서를 알려면 본인 보다 위험도가 높은 사람이 몇명인지 알면 됨
// 30, 10, 23, 6, 100의 경우
// 30 환자는 본인 보다 위급한 사람이 100 한 명 만 존재함.
// 그래서 30의 순번은 2임
// 따라서 위급한 사람들의 배열의 크기 + 1을 하면 순서가 됨
// 10을 예를 들어, 10 보다 위급한 사람은 30, 23, 100 이므로
// [30, 23, 100].count + 1 = 4
// 네번째임

func Q9_1(_ emergency:[Int]) -> [Int] {
    return emergency.map { value in
        emergency.filter { $0 > value }.count + 1
    }
}

