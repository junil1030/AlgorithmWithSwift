//
//  2178.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/8/25.
//

import Foundation

func q2178() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let m = input[1]
    
    var board: [[Int]] = .init(repeating: [], count: n)
    for i in 0..<n {
        let input = readLine()!.split(separator: "").map { Int($0)! }
        board[i].append(contentsOf: input)
    }
    
    var visited: [[Int]] = .init(repeating: .init(repeating: -1, count: m), count: n)
    
    let dy = [0, 1, 0, -1]
    let dx = [1, 0, -1 ,0]
    
    var queue: [(Int, Int)] = []
    var front = 0
    
    queue.append((0,0))
    visited[0][0] = 1
    
    while queue.count >= front + 1 {
        let cur = queue[front]
        front += 1
        
        for dir in 0..<4 {
            let ny = cur.0 + dy[dir], nx = cur.1 + dx[dir]
            
            if ny < 0 || ny >= n || nx < 0 || nx >= m { continue }
            if visited[ny][nx] != -1 { continue }
            if board[ny][nx] == 0 { continue }
            
            queue.append((ny, nx))
            visited[ny][nx] = visited[cur.0][cur.1] + 1
        }
    }
    
    print(visited[n - 1][m - 1])
}
