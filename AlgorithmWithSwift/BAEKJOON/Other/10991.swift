//
//  10991.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/7/25.
//

import Foundation

func q10991() {
    let input = Int(readLine()!)!
    
    for row in 0..<input {
        // 왼쪽 공백 출력
        let spaces = String(repeating: " ", count: input - row - 1)
        
        // 별 출력 (각 별 사이에 공백)
        let stars = String(repeating: "* ", count: row + 1).trimmingCharacters(in: .whitespaces)
        
        print(spaces + stars)
    }
}
