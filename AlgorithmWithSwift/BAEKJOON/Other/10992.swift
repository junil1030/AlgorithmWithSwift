//
//  10992.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/7/25.
//

import Foundation

func q10992() {
    let input = Int(readLine()!)!
    
    for row in 0..<input {
        let spaces = String(repeating: " ", count: input - row - 1)
        
        if row == 0 {
            print(spaces + "*")
        } else if row == input - 1 {
            let stars = String(repeating: "*", count: row * 2 + 1)
            print(spaces + stars)
        } else {
            let inner = String(repeating: " ", count: row * 2 - 1)
            print(spaces + "*" + inner + "*")
        }
    }
}
