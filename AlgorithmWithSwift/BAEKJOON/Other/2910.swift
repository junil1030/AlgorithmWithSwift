//
//  2910.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 1/6/26.
//

import Foundation

func q2910() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]; let c = input[1]
    
    // 기준 숫자: (나온 횟수, 등장한 순서)
    var dict: [Int: (Int, Int)] = [:]
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    
    var rank = 0
    for num in input2 {
        if dict[num] == nil {
            dict[num] = (1, rank)
            rank += 1
        } else {
            dict[num] = (dict[num]!.0 + 1, dict[num]!.1)
        }
    }
    
    let result = dict.sorted { if $0.value.0 == $1.value.0 { return $0.value.1 < $1.value.1 } else { return $0.value.0 > $1.value.0 } }
    var ret = ""
    for a in result {
        for _ in 0..<a.value.0 {
            ret.append("\(String(a.key)) ")
        }
    }
    print(ret.dropLast())
}
