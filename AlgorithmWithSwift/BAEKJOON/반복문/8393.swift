//
//  8393.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 6/7/25.
//

// 문제
// n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.

// 입력
// 첫째 줄에 n (1 ≤ n ≤ 10,000)이 주어진다.

// 출력
// 1부터 n까지 합을 출력한다.

func q8393() {
    let num = Int(readLine()!)!
    var ret = 0
    
    for i in 1...num {
        ret += i
    }
    
    print(ret)
}
