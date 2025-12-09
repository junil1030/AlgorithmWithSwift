//
//  6593.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/8/25.
//

import Foundation

func q6593() {
    while true {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let Z = input[0], Y = input[1], X = input[2]
        if Z == 0 && Y == 0 && X == 0 { break }
        
        var board: [[[String]]] = []
        var start = (0, 0, 0)
        var end = (0, 0, 0)
        
        for i in 0..<Z {
            var floor: [[String]] = []
            
            for j in 0..<Y {
                let row = Array(readLine()!).map { String($0) }
                
                for k in 0..<X {
                    if row[k] == "S" {
                        start = (i, j, k)
                    } else if row[k] == "E" {
                        end = (i, j, k)
                    }
                }
                
                floor.append(row)
            }
            
            board.append(floor)
            
            if i < Z - 1 {
                _ = readLine()  // 층 사이 빈 줄
            }
        }
        
        let dy = [0, 1, 0, -1, 0, 0]
        let dx = [1, 0, -1, 0, 0, 0]
        let dz = [0, 0, 0, 0, 1, -1]
        
        var queue: [(Int, Int, Int)] = [start]
        var head = 0
        var visited = Array(repeating: Array(repeating: Array(repeating: -1, count: X), count: Y), count: Z)
        
        visited[start.0][start.1][start.2] = 0
        
        while head < queue.count {
            let (cz, cy, cx) = queue[head]
            head += 1
            
            for k in 0..<6 {
                let nz = cz + dz[k]
                let ny = cy + dy[k]
                let nx = cx + dx[k]
                
                if nz < 0 || nz >= Z || ny < 0 || ny >= Y || nx < 0 || nx >= X { continue }
                if visited[nz][ny][nx] != -1 { continue }
                if board[nz][ny][nx] == "#" { continue }
                
                visited[nz][ny][nx] = visited[cz][cy][cx] + 1
                queue.append((nz, ny, nx))
            }
        }
        
        let result = visited[end.0][end.1][end.2]
        if result == -1 {
            print("Trapped!")
        } else {
            print("Escaped in \(result) minute(s).")
        }
    }
}
