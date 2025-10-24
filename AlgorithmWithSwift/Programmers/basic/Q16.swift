//
//  Q16.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

var dic = [
    "zero" : "0",
    "one": "1",
    "two": "2",
    "three": "3",
    "four": "4",
    "five": "5",
    "six": "6",
    "seven": "7",
    "eight": "8",
    "nine": "9"
]

func Q16(_ numbers:String) -> Int64 {
    var answer = numbers
    for (k, v) in dic {
        answer = String(answer.replacingOccurrences(of: k, with: v))
    }
    return Int64(answer)!
}
