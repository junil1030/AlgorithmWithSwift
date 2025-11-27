//
//  3273.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/27/25.
//

import Foundation

func q3273() -> Int {
    let num = Int(readLine()!)!
    let ary = readLine()!.split(separator: " ").map { Int($0)! }
    let ret = Int(readLine()!)!
    
    var count = 0
    var retArr = Array(repeating: false, count: 2000000)
    for i in ary {
        if i >= ret { continue }
        if retArr[ret - i] { count += 1 }
        else { retArr[i] = true }
    }
    
    return count
}
