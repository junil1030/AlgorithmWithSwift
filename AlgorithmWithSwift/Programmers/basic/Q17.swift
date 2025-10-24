//
//  Q17.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/22/25.
//

import Foundation

var halfWidth = 0
var halfHeight = 0

var cur: (Int, Int) = (0, 0)
func go(_ str: String) {
    if str == "up" {
        if cur.1 < halfHeight {
            cur.1 += 1
        }
    } else if str == "down" {
        if cur.1 > -halfHeight {
            cur.1 -= 1
        }
    } else if str == "left" {
        if cur.0 > -halfWidth {
            cur.0 -= 1
        }
    } else {
        if cur.0 < halfWidth {
            cur.0 += 1
        }
    }
}

func Q17(_ keyinput:[String], _ board:[Int]) -> [Int] {
    halfWidth = board[0] / 2
    halfHeight = board[1] / 2
    
    for str in keyinput {
        go(str)
    }
    
    return [cur.0, cur.1]
}
