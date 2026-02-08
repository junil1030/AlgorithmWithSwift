//
//  배열자르기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/8/26.
//

import Foundation

func 배열자르기(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}
