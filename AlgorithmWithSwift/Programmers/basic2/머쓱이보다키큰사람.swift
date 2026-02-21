//
//  머쓱이보다키큰사람.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation
//11:25 - 11:27

func 머쓱이보다키큰사람(_ array:[Int], _ height:Int) -> Int {
    return array.filter { $0 > height }.count
}

