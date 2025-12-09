//
//  1926.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/9/25.
//

import Foundation

func q1926() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let row = input[0]; let col = input[1]
    
    var board: [[Int]] = []
    
    for _ in 0..<row {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        board.append(input)
    }
    
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: col), count: row)
    
    let dy = [1,-1,0,0]
    let dx = [0,0,1,-1]
    
    var count: [Int] = []
    
    for i in 0..<row {
        for j in 0..<col {
            if !visited[i][j], board[i][j] == 1 {
                var queue = [(i, j)]
                var front = 0
                
                visited[i][j] = true
                var result = 1
                
                while queue.count >= front + 1 {
                    let cur = queue[front]
                    front += 1
                    
                    for k in 0..<4 {
                        let ny = cur.0 + dy[k]
                        let nx = cur.1 + dx[k]
                        
                        if ny < 0 || ny >= row || nx < 0 || nx >= col { continue }
                        if visited[ny][nx] { continue }
                        if board[ny][nx] != 1 { continue }
                        queue.append((ny, nx))
                        visited[ny][nx] = true
                        result += 1
                    }
                }
                
                count.append(result)
            }
        }
    }
    
    print(count.count)
    print(count.count == 0 ? 0 : count.max()!)
}
