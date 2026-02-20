//
//  핸드폰번호가리기.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/20/26.
//

func 핸드폰번호가리기(_ phone_number:String) -> String {
    let final = phone_number.suffix(4)
    let length = phone_number.count
    let ret = (0..<length - 4).map { _ in "*" }
    return ret.joined(separator: "") + final
}
