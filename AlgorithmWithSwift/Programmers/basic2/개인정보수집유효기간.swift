//
//  개인정보수집유효기간.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation

// "2022.05.19"
// ["A 6", "B 12", "C 3"]
// ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"]
// [1, 3]

// "2020.01.01"
// ["Z 3", "D 5"]
// ["2019.01.01 D", "2019.11.15 Z", "2019.08.02 D", "2019.07.01 D", "2018.12.28 Z"]
// [1, 4, 5]

func 개인정보수집유효기간(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var termsDics: [String: Int] = [:]
    for temp in terms {
        let ary = temp.split(separator: "").map { String($0) }
        if termsDics[ary[0]] != nil { termsDics[ary[0]] = Int(ary[2])! }
    }
    
    return []
}
