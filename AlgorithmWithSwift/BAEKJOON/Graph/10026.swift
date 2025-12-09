//
//  10026.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 12/9/25.
//

import Foundation

func q10026() {
    let n = Int(readLine()!)!
    var normalBoard: [[String]] = []
    var blindBoard: [[String]] = []
    
    for _ in 0..<n {
        let input = Array(readLine()!).map { String($0) }
        let converted = input.map { $0 == "G" ? "R" : $0 }
        
        normalBoard.append(input)
        blindBoard.append(converted)
    }
    
    let normalCount = count(normalBoard, n)
    let blindCount = count(blindBoard, n)
    
    print("\(normalCount) \(blindCount)")
}

func count(_ board: [[String]], _ n: Int) -> Int {
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: n), count: n)
    var count = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] {
                bfs(board, &visited, i, j, n)
                count += 1
            }
        }
    }
    
    return count
}

func bfs(_ board: [[String]], _ visited: inout [[Bool]], _ sRow: Int, _ sCol: Int, _ n: Int) {
    let dy = [1,-1,0,0]
    let dx = [0,0,1,-1]
    
    var queue = [(sRow, sCol)]
    visited[sRow][sCol] = true
    let color = board[sRow][sCol]
    var front = 0
    
    while queue.count >= front + 1 {
        let cur = queue[front]
        front += 1
        
        for i in 0..<4 {
            let ny = cur.0 + dy[i]
            let nx = cur.1 + dx[i]
            
            if ny < 0 || nx < 0 || ny >= n || nx >= n { continue }
            if visited[ny][nx] { continue }
            if board[ny][nx] != color { continue }
            queue.append((ny, nx))
            visited[ny][nx] = true
        }
    }
}


func q10026_1() {
    let n = Int(readLine()!)!
    var normalBoard: [[String]] = []
    var blindBoard: [[String]] = []
    
    for _ in 0..<n {
        let input = Array(readLine()!).map { String($0) }
        let converted = input.map { $0 == "G" ? "R" : $0 }
        
        normalBoard.append(input)
        blindBoard.append(converted)
    }
    
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: n), count: n)
    
    let dy = [1,-1,0,0]
    let dx = [0,0,1,-1]
    
    var count = 0
    var blindCount = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] {
                var queue: [(Int, Int)] = [(i, j)]
                var front = 0

                visited[i][j] = true
                let color = normalBoard[i][j]
                
                while queue.count >= front + 1 {
                    let cur = queue[front]
                    front += 1
                    
                    for k in 0..<4 {
                        let ny = cur.0 + dy[k]
                        let nx = cur.1 + dx[k]
                        
                        if ny < 0 || nx < 0 || ny >= n || nx >= n { continue }
                        if visited[ny][nx] { continue }
                        if normalBoard[ny][nx] != color { continue }
                        queue.append((ny, nx))
                        visited[ny][nx] = true
                    }
                }
                count += 1
            }
        }
    }
    
    visited = .init(repeating: .init(repeating: false, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] {
                var queue: [(Int, Int)] = [(i, j)]
                var front = 0
                
                visited[i][j] = true
                let color = blindBoard[i][j]
                
                while queue.count >= front + 1 {
                    let cur = queue[front]
                    front += 1
                    
                    for i in 0..<4 {
                        let ny = cur.0 + dy[i]
                        let nx = cur.1 + dx[i]
                        
                        if ny < 0 || nx < 0 || ny >= n || nx >= n { continue }
                        if visited[ny][nx] { continue }
                        if blindBoard[ny][nx] != color { continue }
                        queue.append((ny, nx))
                        visited[ny][nx] = true
                    }
                }
                blindCount += 1
            }
        }
    }
    
    print("\(count) \(blindCount)")
}
