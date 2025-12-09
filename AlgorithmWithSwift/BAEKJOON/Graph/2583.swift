//
//  2583.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/9/25.
//

import Foundation

func q2583() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let row = input[0]; let col = input[1]; let num = input[2]
    
    var board: [[Int]] = .init(repeating: .init(repeating: 1, count: col), count: row)
    for _ in 0..<num {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let lx = input[0]; let ly = input[1]; let rx = input[2]; let ry = input[3]
        
        for i in lx..<rx {
            for j in ly..<ry {
                board[row - 1 - j][i] = 0
            }
        }
    }
    
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: col), count: row)
    var result: [Int] = []
    
    let dy = [1,-1,0,0]
    let dx = [0,0,1,-1]
    
    for i in 0..<row {
        for j in 0..<col {
            if !visited[i][j], board[i][j] == 1 {
                var queue = [(i, j)]
                visited[i][j] = true
                var front = 0
                var sum = 1
                
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
                        sum += 1
                    }
                }
                result.append(sum)
            }
        }
    }
    
    print(result.count)
    print(result.sorted().map { String($0) }.joined(separator: " "))
}
