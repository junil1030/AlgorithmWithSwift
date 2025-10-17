//
//  Q8.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/17/25.
//

import Foundation

func Q8(_ a: Int, _ b: Int, _ c: Int) -> Int {
    let sum = a + b + c
    let sumOfSquares = a * a + b * b + c * c
    let sumOfCubes = a * a * a + b * b * b + c * c * c
    
    // 세 숫자가 모두 같은 경우
    if a == b && b == c {
        return sum * sumOfSquares * sumOfCubes
    }
    
    // 두 숫자가 같은 경우
    if a == b || b == c || a == c {
        return sum * sumOfSquares
    }
    
    // 세 숫자가 모두 다른 경우
    return sum
}
