//
//  Q36.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/31/25.
//

import Foundation

func Q36(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    let first = my_string.prefix(s)
    let end = my_string.dropFirst(overwrite_string.count + s)
    return first + overwrite_string + end
}
