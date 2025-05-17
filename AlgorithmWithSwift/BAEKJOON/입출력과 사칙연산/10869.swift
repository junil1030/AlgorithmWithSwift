//
//  10869.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 5/17/25.
//

// 문제
// 두 자연수 A와 B가 주어진다. 이때, A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력하는 프로그램을 작성하시오.
// 입력
// 두 자연수 A와 B가 주어진다. (1 ≤ A, B ≤ 10,000)
// 출력
// 첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.

func q10869() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print(input[0] + input[1])
    print(input[0] - input[1])
    print(input[0] * input[1])
    print(input[0] / input[1])
    print(input[0] % input[1])
}
