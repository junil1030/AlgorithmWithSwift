//
//  1001.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 5/16/25.
//

// 문제
// 두 정수 A와 B를 입력받은 다음, A-B를 출력하는 프로그램을 작성하시오.
// 입력
// 첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)
// 출력
// 첫째 줄에 A-B를 출력한다.

func q1001() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print(input[0] - input[1])
}
