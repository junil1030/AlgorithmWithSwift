//
//  제일작은수제거하기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

func 제일작은수제거하기(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }
    var min = Int.max
    var index = 0
    var arr = arr
    for i in 0..<arr.count {
        if min > arr[i] {
            min = arr[i]
            index = i
        }
    }
    arr.remove(at: index)
    return arr
}
