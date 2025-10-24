//
//  Q19.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

func Q19(_ str_list:[String]) -> [String] {
    var list = str_list
    var trigger: Bool = false
    var result: [String] = []
    
    for str in str_list {
        if str == "l" {
            trigger = true
            break
        } else if str == "r" {
            trigger = true
            list.removeFirst()
            result = list
            break
        } else {
            result.append(String(str))
            list.removeFirst()
        }
    }
    
    return trigger ? result : []
}
