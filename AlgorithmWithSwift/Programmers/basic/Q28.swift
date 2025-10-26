//
//  Q28.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/26/25.
//

import Foundation

func Q28(_ code:String) -> String {
    let code = Array(code)
    var result = ""
    
    var mode = false
    for i in 0..<code.count {
        if code[i] == "1" {
            mode.toggle()
            continue
        }
        
        if i % 2 == 0 { // 짝수일 때
            if !mode { result.append(code[i]) }
        } else { // 홀수일 때
            if mode { result.append(code[i]) }
        }
    }
    
    return result.isEmpty ? "EMPTY" : result
}
