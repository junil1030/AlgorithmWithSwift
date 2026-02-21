//
//  1차_비밀지도.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation

func 비밀지도_1차(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    var arr1_2: [String] = []
    var arr2_2: [String] = []
    
    for num in arr1 {
        var radix = String(num, radix: 2)
        while radix.count < n {
            radix.insert("0", at: radix.startIndex)
        }
        arr1_2.append(radix)
    }
    
    for num in arr2 {
        var radix = String(num, radix: 2)
        while radix.count < n {
            radix.insert("0", at: radix.startIndex)
        }
        arr2_2.append(radix)
    }
    
    for i in 0..<n {
        var ret = ""
        for j in 0..<n {
            let temp1 = arr1_2[i].map { String($0) }
            let temp2 = arr2_2[i].map { String($0) }
            if temp1[j] == "0", temp2[j] == "0" {
                ret.append(" ")
            } else {
                ret.append("#")
            }
        }
        answer.append(ret)
    }
    
    return answer
}
