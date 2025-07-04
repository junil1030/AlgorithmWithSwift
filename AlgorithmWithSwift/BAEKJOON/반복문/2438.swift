//
//  2438.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 6/19/25.
//

// 문제
// 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제

// 입력
// 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.

// 출력
// 첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.

func q2438() {
    let input = Int(readLine()!)!
    
    for i in 1...input {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}
