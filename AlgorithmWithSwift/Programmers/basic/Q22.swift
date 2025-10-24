//
//  Q22.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

func Q22(_ q:Int, _ r:Int, _ code:String) -> String {
    var result: String = ""
    
    for i in 0..<code.count {
        if i % q == r {
            result.append(String(Array(code)[i]))
        }
    }
    
    return result
}
