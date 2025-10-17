//
//  Q2.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/15/25.
//

import Foundation

func Q2(_ n: Int) -> Int {
    var cnt = 0
    let sqrtN = Int(Double(n).squareRoot())
    
    for i in 1...sqrtN {
        if n % i == 0 {
            cnt += 1
            if i != n / i {
                cnt += 1
            }
        }
    }
    
    return cnt
}

//테스트 1 〉    통과 (0.01ms, 16.3MB)
//테스트 2 〉    통과 (0.01ms, 16.3MB)
//테스트 3 〉    통과 (1.93ms, 16.5MB)
//테스트 4 〉    통과 (0.01ms, 16.2MB)
//테스트 5 〉    통과 (1.21ms, 16.5MB)
//테스트 6 〉    통과 (12.73ms, 16.4MB)
//테스트 7 〉    통과 (0.01ms, 16.3MB)
//테스트 8 〉    통과 (0.01ms, 16.3MB)
//테스트 9 〉    통과 (12.82ms, 16.4MB)
//테스트 10 〉    통과 (12.09ms, 16.4MB)


//테스트 1 〉    통과 (0.01ms, 16.3MB)
//테스트 2 〉    통과 (0.01ms, 16.3MB)
//테스트 3 〉    통과 (0.02ms, 16.4MB)
//테스트 4 〉    통과 (0.01ms, 16.2MB)
//테스트 5 〉    통과 (0.03ms, 16.2MB)
//테스트 6 〉    통과 (0.02ms, 16.3MB)
//테스트 7 〉    통과 (0.01ms, 16.5MB)
//테스트 8 〉    통과 (0.02ms, 16.2MB)
//테스트 9 〉    통과 (0.03ms, 16.5MB)
//테스트 10 〉    통과 (0.03ms, 16.4MB)
