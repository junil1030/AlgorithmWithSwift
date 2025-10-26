//
//  Q24.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/25/25.
//

import Foundation

func Q24(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted { first, second in
        let firstDistance = abs(first - n)
        let secondDistance = abs(second - n)
        
        if firstDistance == secondDistance {
            return first > second
        }
        
        return firstDistance < secondDistance
    }
}
