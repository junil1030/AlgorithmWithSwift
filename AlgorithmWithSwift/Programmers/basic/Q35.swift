//
//  Q35.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/31/25.
//

import Foundation

func Q35(_ babbling:[String]) -> Int {
    var result = 0
    
    let aya = "aya"
    let ye = "ye"
    let woo = "woo"
    let ma = "ma"
    
    for str in babbling {
        var string = str
        var isTrue = true
        while string.count > 0 {
            switch string.first! {
                case "a", "w":
                    if string.count > 2 {
                        let temp = String(string.prefix(3))
                        if aya != temp, woo != temp {
                            isTrue = false
                        }
                        string.removeFirst(3)
                    } else {
                        isTrue = false
                        string.removeFirst()
                    }
                case "y", "m":
                    if string.count > 1 {
                        let temp = String(string.prefix(2))
                        if ye != temp, ma != temp {
                            isTrue = false
                        }
                        string.removeFirst(2)
                    } else {
                        isTrue = false
                        string.removeFirst()
                    }
                default:
                    isTrue = false
                    string.removeFirst()
            }
        }
        if isTrue { result += 1 }
    }
    
    return result
}
