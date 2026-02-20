//
//  나누어떨어지는숫자배열.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

import Foundation

func 나누어떨어지는숫자배열(_ arr:[Int], _ divisor:Int) -> [Int] {
    var ret: [Int] = []
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            ret.append(arr[i])
        }
    }
    
    if ret.count == 0 { return [-1] }
    return ret.sorted()
}
