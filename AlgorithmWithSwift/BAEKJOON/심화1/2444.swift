//
//  2444.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 6/24/25.
//

// 문제
// 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.

// 입력
// 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.

// 출력
// 첫째 줄부터 2×N-1번째 줄까지 차례대로 별을 출력한다.

func q2444() {
    let n = Int(readLine()!)!

    for i in 1...n {
        let star = String(repeating: " ", count: n - i) + String(repeating: "*", count: 2 * i - 1)
        print(star)
    }

    for i in 1..<n {
        let star = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (n - i) - 1)
        print(star)
    }
}
