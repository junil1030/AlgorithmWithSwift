//
//  대충만든자판.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

import Foundation

func 대충만든자판(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dict: [String: Int] = [:]
    for key in keymap {
        let ary = key.map { String($0) }
        for i in 0..<ary.count {
            if dict[ary[i]] != nil {
                if dict[ary[i]]! > i { dict[ary[i]] = i + 1 }
            } else {
                dict[ary[i]] = i + 1
            }
        }
    }
    
    var count = 0
    var result: [Int] = []
    for target in targets {
        let ary = target.map { String($0) }
        for char in ary {
            if dict[char] != nil {
                count += dict[char]!
            } else {
                count = -1
                break
            }
        }
        result.append(count)
        count = 0
    }
    return result
}
