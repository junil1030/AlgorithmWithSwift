//
//  Combi_Permu.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 6/3/25.
//

import Foundation

func combiTest() {
    let arr = [1, 2, 3, 4]
    let combi = combination(arr, 3)
    print(combi)
}

func permutTest() {
    let arr = [1, 2, 3, 4]
    let permu = permutation(arr, 3)
    print(permu)
}

func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result: [[T]] = []
    
    func combi(_ index: Int, _ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    combi(0, [])
    return result
}

func permutation<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result: [[T]] = []
    var visited = [Bool](repeating: false, count: elements.count)
    
    func permut(_ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        
        for i in 0..<elements.count {
            if visited[i] == true { continue }
            visited[i] = true
            permut(now + [elements[i]])
            visited[i] = false
        }
    }
    permut([])
    return result
}
