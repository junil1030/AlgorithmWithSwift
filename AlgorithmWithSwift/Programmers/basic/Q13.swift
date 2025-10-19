//
//  Q13.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/19/25.
//

import Foundation

func Q13(_ s: String) -> String {
    var cnt: [Character: Int] = [:]
    for char in s {
        if cnt[char] != nil {
            cnt[char]! += 1
        } else {
            cnt[char] = 1
        }
    }
    
    var result = ""
    for i in cnt {
        if i.value == 1 {
            result.append(i.key)
        }
    }
    
    return String(result.sorted())
}

func Q13_1(_ s: String) -> String {
    var cnt: [Character: Int] = [:]
    for char in s {
        if cnt[char] != nil {
            cnt[char]! += 1
        } else {
            cnt[char] = 1
        }
    }
    
    return String(cnt.filter { $0.value == 1 }.map { $0.key }.sorted())
}

func Q13_2(_ s: String) -> String {
    let cnt = s.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return String(cnt.filter { $0.value == 1 }.map { $0.key }.sorted())
}
