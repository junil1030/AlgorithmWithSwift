//
//  안전지대.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 11/27/25.
//

import Foundation

let dy = [0, 1, 0, -1, 1, 1, -1, -1]
let dx = [1, 0, -1, 0, 1, -1, 1, -1]

func 안전지대(_ board:[[Int]]) -> Int {
    var visit = board.map { row in Array(repeating: 0, count: row.count) }
    var q = Queue<(row: Int, col: Int)>()
    
    q.push((0, 0))
    visit[0][0] = 1
    
    while !q.isEmpty {
        guard let cur = q.pop() else { break }
        
        for i in 0..<8 {
            let ny = cur.row + dy[i]
            let nx = cur.col + dx[i]
            
            if ny < 0 || nx < 0 || ny >= board.count || nx >= board[0].count { continue }
            if visit[ny][nx] != 0 { continue }
            if board[ny][nx] == 1 {
                for i in 0..<8 {
                    
                }
            }
        }
    }
    
    return 0
}
