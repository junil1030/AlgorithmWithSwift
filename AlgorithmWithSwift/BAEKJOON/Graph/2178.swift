//
//  2178.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/8/25.
//

import Foundation

func q2178() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let y = input[0]; let x = input[1];
    
    var board: [[Int]] = []
    var visited: [[Int]] = .init(repeating: .init(repeating: 0, count: x), count: y)
    
    for _ in 0..<y {
        let input = readLine()!.map { Int(String($0))! }
        board.append(input)
    }
    
    let dy = [1, -1, 0, 0]
    let dx = [0, 0, -1, 1]
    
    var queue: [(Int, Int)] = []
    var front = 0
    let start = (0, 0)
    
    visited[0][0] = 1
    queue.append(start)
    
    while queue.count >= front + 1 {
        let cur = queue[front]
        front += 1
        
        for i in 0..<4 {
            let ny = cur.0 + dy[i]
            let nx = cur.1 + dx[i]
            
            if ny < 0 || ny >= y || nx < 0 || nx >= x { continue }
            if board[ny][nx] == 0 { continue }
            if visited[ny][nx] > 0 { continue }
            visited[ny][nx] = visited[cur.0][cur.1] + 1
            queue.append((ny, nx))
        }
    }
    
    print(visited[y - 1][x - 1])
}
