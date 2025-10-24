//
//  Q21.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

func Q21(_ my_string:String, _ queries:[[Int]]) -> String {
    var str = my_string
    for query in queries {
        let arrStr = Array(str)
        let original = String(arrStr[query[0]...query[1]])
        let change = String(original.reversed())
        str = str.replacingOccurrences(of: original, with: change)
    }
    
    return str
}

