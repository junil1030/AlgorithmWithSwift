//
//  2588.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 5/17/25.
//

// 문제
// (세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.
// (1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오.

// 입력
// 첫째 줄에 (1)의 위치에 들어갈 세 자리 자연수가, 둘째 줄에 (2)의 위치에 들어갈 세자리 자연수가 주어진다.

// 출력
// 첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.

func q2588() {
    let input1 = Int(readLine()!)!
    let input2 = Int(readLine()!)!
    
    let b1 = input2 % 10
    let b2 = input2 % 100 / 10
    let b3 = input2 / 100
    
    let result1 = input1 * b1
    let result2 = input1 * b2
    let result3 = input1 * b3
    
    print(result1)
    print(result2)
    print(result3)
    print(result1 + result2 * 10 + result3 * 100)
}
