//
//  ArrayTip.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 5/28/25.
//

import Foundation

func arrayTip1() {
    let str = "abc"
    let arr = [1, 2, 3]
    let arr2: [Int] = []
    
    // 시간 복잡도는 모두 O(1)
    // Optional을 반환함
    print(str.last!)    // c
    print(arr.last!)    // 3
    print(str.first!)   // a
    print(arr.first!)   // 1
    print(arr2.first)   // nil
}

func arrayTip2() {
    let x = 12345
    let arr = String(x).map { Int(String($0))! }
    
    print(arr)  // [1, 2, 3, 4, 5]
}

func arrayTip3() {
    // 배열 초기화의 방법
    let N = 5
    let a = [Int](repeating: 0, count: N)
    let b = [Int](0..<N)
    let c = [Int](0..<N).map { $0 * 2 }
    let d = [Int](0..<N).filter { $0.isMultiple(of: 2) }
    
    print(a)    // [0, 0, 0, 0, 0]
    print(b)    // [0, 1, 2, 3, 4]
    print(c)    // [0, 2, 4, 6, 8]
    print(d)    // [0, 2, 4]
}
