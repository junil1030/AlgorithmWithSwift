//
//  Q29.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/26/25.
//

import Foundation

func Q29(_ A:String, _ B:String) -> Int {
    var a = A.map { String($0) }
    let b = B.map { String($0) }
    
    var result = -1
    for i in 0..<a.count {
        if a == b {
            result = i
            break
        }
        
        let last = a[a.count - 1]
        a.removeLast()
        let temp = a
        a.removeAll()
        a.append(last)
        a.append(contentsOf: temp)
    }
    
    return result
}

func Q29_1(_ A: String, _ B: String) -> Int {
    let arr = (A+A).components(separatedBy: B)
    return arr.count == 1 ? -1 : arr[1].count
}
