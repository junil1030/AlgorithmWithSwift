//
//  Q30.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/26/25.
//

import Foundation

func Q30(_ polynomial:String) -> String {
    let sep = polynomial.split(separator: " ")
    let a = sep.map { String($0) }
    
    var xCount = 0
    var numCount = 0
    for str in a {
        if str.contains("x") {
            if str.count == 1 {
                xCount += 1
            } else {
                var temp = str
                temp.removeLast()
                xCount += Int(temp)!
            }
        } else {
            if str != "+" {
                numCount += Int(str)!
            }
        }
    }
    
    if xCount == 0 {
        if numCount == 0 {
            return ""
        } else {
            return "\(numCount)"
        }
    } else {
        if numCount == 0 {
            if xCount == 1 {
                return "x"
            } else {
                return "\(xCount)x"
            }
        } else {
            if xCount == 1 {
                return "x + \(numCount)"
            } else {
                return "\(xCount)x + \(numCount)"
            }
        }
    }
}
