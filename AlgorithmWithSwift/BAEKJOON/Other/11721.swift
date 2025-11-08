//
//  11721.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/7/25.
//

import Foundation

func q11721() {
    let input = readLine()!
    let ary = Array(input)
    
    var result: String = ""
    for str in ary {
        result.append(str)
        if result.count == 10 {
            print(result)
            result = ""
        }
    }
    print(result)
}
