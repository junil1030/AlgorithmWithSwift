//
//  1012_2.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 1/16/26.
//

import Foundation

func q1012_2() {
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let input = readLine()!.split(separator: " ").map { Int(String($0)) }
        let x = input[0]!; let y = input[1]!; let k = input[2]!;
        
        var board: [[Int]] = .init(repeating: .init(repeating: 0, count: x), count: y)
        var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: x), count: y)
        
        for _ in 0..<k {
            let input = readLine()!.split(separator: " ").map { Int(String($0)) }
            let x = input[0]!; let y = input[1]!;
            
            board[y][x] = 1
        }
        
        let dy = [0, 1, 0, -1]
        let dx = [1, 0, -1, 0]
        var count = 0
        
        for i in 0..<y {
            for j in 0..<x {
                if board[i][j] == 1, !visited[i][j] {
                    count += 1
                    var queue: [(Int, Int)] = [(i, j)]
                    var front = 0
                    visited[i][j] = true
                    
                    while queue.count >= front + 1 {
                        let cur = queue[front]
                        front += 1
                        
                        for k in 0..<4 {
                            let ny = cur.0 + dy[k]
                            let nx = cur.1 + dx[k]
                            
                            if ny < 0 || ny >= y || nx < 0 || nx >= x { continue }
                            if board[ny][nx] == 0 { continue }
                            if visited[ny][nx] { continue }
                            visited[ny][nx] = true
                            queue.append((ny, nx))
                        }
                    }
                }
            }
        }
        
        print(count)
    }
}
