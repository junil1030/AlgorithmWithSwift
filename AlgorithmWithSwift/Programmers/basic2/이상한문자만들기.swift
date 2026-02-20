//
//  이상한문자만들기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

func 이상한문자만들기(_ s:String) -> String {
    var ret = s.map { String($0) }
    var count = 0
    for i in 0..<ret.count {
        if ret[i] == " " {
            count = 0
            continue
        }
        if count % 2 == 0 {
            ret[i] = ret[i].uppercased()
        } else {
            ret[i] = ret[i].lowercased()
        }
        count += 1
    }
    
    return ret.joined(separator: "")
}
