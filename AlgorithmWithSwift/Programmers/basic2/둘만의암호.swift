//
//  둘만의암호.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation
// 11:28 - 11:42

func 둘만의암호(_ s:String, _ skip:String, _ index:Int) -> String {
    let alphabet = "abcdefghijklmnopqrstuvwxyz".filter { !skip.contains($0) }
    let ary = Array(alphabet)
    let count = ary.count
    
    var result = ""
    
    for char in s {
        if let curIndex = ary.firstIndex(of: char) {
            let nextIndex = (curIndex + index) % count
            result.append(ary[nextIndex])
        }
    }
    
    return result
}

