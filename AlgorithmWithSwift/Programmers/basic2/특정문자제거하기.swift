//
//  특정문자제거하기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

func 특정문자제거하기(_ my_string:String, _ letter:String) -> String {
    var ret = ""
    let string = my_string.map { String($0) }
    for s in string {
        if s != letter { ret.append(s) }
    }
    return ret
}
