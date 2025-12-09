//
//  2667.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/9/25.
//

import Foundation

func q2667() {
    let n = Int(readLine()!)!
    var board: [[Int]] = []
    
    for _ in 0..<n {
        let input = Array(readLine()!).map { Int(String($0))! }
        board.append(input)
    }
    
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: n), count: n)
    
    let dy = [1,-1,0,0]
    let dx = [0,0,1,-1]
    
    var count = 0
    var resultAry: [Int] = []
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j], board[i][j] == 1 {
                var queue: [(Int, Int)] = [(i, j)]
                visited[i][j] = true
                
                var front = 0
                var result = 1
                
                while queue.count >= front + 1 {
                    let cur = queue[front]
                    front += 1
                    
                    for k in 0..<4 {
                        let ny = cur.0 + dy[k]
                        let nx = cur.1 + dx[k]
                        
                        if ny < 0 || ny >= n || nx < 0 || nx >= n { continue }
                        if visited[ny][nx] { continue }
                        if board[ny][nx] != 1 { continue }
                        queue.append((ny, nx))
                        visited[ny][nx] = true
                        result += 1
                    }
                }
                
                count += 1
                resultAry.append(result)
            }
        }
    }
    
    print(count)
    resultAry.sort()
    for result in resultAry {
        print(result)
    }
}
