//
//  2559.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/26/25.
//

import Foundation

func q2559() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]; let k = input[1]
    
    var ary: [Int] = [0]
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    for i in 1...input2.count {
        ary.append(ary[i - 1] + input2[i - 1])
    }
    
    var ret = Int.min
    for i in k...n {
        ret = max(ret, ary[i] - ary[i - k])
    }
    
    print(ret)
}
