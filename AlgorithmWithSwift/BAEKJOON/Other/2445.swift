//
//  2445.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/7/25.
//

import Foundation

func q2445() {
    let input = Int(readLine()!)!
    
    for i in 1...(2 * input - 1) {
        var total: String = ""
        if i <= input {
            for j in 1...(2 * input) {
                if j <= i {
                    total += "*"
                } else if j <= input+input - i {
                    total += " "
                } else {
                    total += "*"
                }
            }
        } else {
            for j in 1...(2 * input) {
                if j <= input+input - i {
                    total += "*"
                } else if j > i {
                    total += "*"
                } else {
                    total += " "
                }
            }
        }
        print(total)
    }
}
