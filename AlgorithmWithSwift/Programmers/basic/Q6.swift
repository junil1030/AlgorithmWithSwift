//
//  Q6.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/17/25.
//

import Foundation

func Q6(_ array: [Int]) -> Int {
    // 7,77,17 입력
    // "7", "77", "17" 스트링 배열로 변환
    let strAry = array.map { "\($0)" }
    
    // 7이 있는 원소들만 필터링
    let filterAry = strAry.filter { $0.contains("7") }
    
    // 7이 몇개있는지 찾기
    var count = 0
    for i in filterAry {
        for char in i {
            if char == "7" {
                count += 1
            }
        }
    }
    
    return count
    
//    return array.map { String($0) }.joined().filter { $0 == "7 "}.count
}
