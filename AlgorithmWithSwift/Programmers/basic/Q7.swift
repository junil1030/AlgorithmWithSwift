//
//  Q7.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/17/25.
//

import Foundation

func Q7(_ my_string: String, _ s: Int, _ e: Int) -> String {
    let first = my_string.startIndex
    
    let middle = String(my_string[my_string.index(first, offsetBy: s) ... my_string.index(first, offsetBy: e)])
    let reversed = String(middle.reversed())
    
    return my_string.replacingOccurrences(of: middle, with: reversed)
}

// 다른 사람 풀이
// 배열로 바꾸면 인덱스 접근이 되니까 배열로 바꾼다음에 교체했음
func Q7_1(_ my_string: String, _ s: Int, _ e: Int) -> String {
    var my_string = Array(my_string)
    my_string.replaceSubrange(s...e, with: Array(my_string[s...e].reversed()))
    
    return String(my_string)
}
