//
//  문자열내마음대로정렬하기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation

func 문자열내마음대로정렬하기(_ strings:[String], _ n:Int) -> [String] {
    var dict: [String: [String]] = [:]
    for str in strings {
        let temp = str.map { String($0) }
        if dict[temp[n]] != nil {
            dict[temp[n]]?.append(str)
        } else {
            dict[temp[n]] = [str]
        }
    }
    
    let temp = dict.sorted { $0.key < $1.key }.map { $0.value.sorted() }
    var ret: [String] = []
    for i in 0..<temp.count {
        for j in 0..<temp[i].count {
            ret.append(temp[i][j])
        }
    }
    
    return ret
}
