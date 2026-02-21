//
//  자릿수더하기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation

func 자릿수더하기(_ n:Int) -> Int
{
    var answer:Int = 0
    answer = String(n).compactMap { Int(String($0)) }.reduce(0, +)
    return answer
}
