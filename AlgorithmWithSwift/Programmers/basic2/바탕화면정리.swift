//
//  바탕화면정리.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation
// 13:52 - 14:00

func 바탕화면정리(_ wallpaper:[String]) -> [Int] {
    var lux = Int.max
    var luy = Int.max
    var rdx = Int.min
    var rdy = Int.min
    
    for i in 0..<wallpaper.count {
        let temp = wallpaper[i].map { String($0) }
        for j in 0..<temp.count {
            if temp[j] == "#" {
                if lux > i { lux = i }
                if luy > j { luy = j }
                if rdx < i + 1 { rdx = i + 1 }
                if rdy < j + 1 { rdy = j + 1 }
            }
        }
    }
    
    return [lux, luy, rdx, rdy]
}

