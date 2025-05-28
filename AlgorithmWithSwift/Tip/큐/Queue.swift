//
//  Queue.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 5/28/25.
//

import Foundation

struct Queue<T> {
    var inputStack: [T] = []
    var outputStack: [T] = []
    
    mutating func push(_ x: T) {
        inputStack.append(x)
    }
    
    mutating func pop() -> T? {
        var top: T?
        if outputStack.isEmpty {
            outputStack = inputStack.reversed()
            inputStack.removeAll()
            top = outputStack.popLast()
        } else {
            top = outputStack.popLast()
        }
        return top
    }
    
    mutating func front() -> T? {
        if outputStack.isEmpty {
            outputStack = inputStack.reversed()
            inputStack.removeAll()
        }
        return outputStack.isEmpty ? nil : outputStack[outputStack.endIndex - 1]
    }
    
    func isEmpty() -> Bool {
        return inputStack.isEmpty && outputStack.isEmpty
    }
    
    var count: Int {
        return inputStack.count + outputStack.count
    }
    
    mutating func clear() {
        inputStack.removeAll()
        outputStack.removeAll()
    }
    
    func printQueue() {
        var allElements: [T] = []
        
        // outputStack에 있는 요소들 (이미 뒤집어져 있음)
        for i in (0..<outputStack.count).reversed() {
            allElements.append(outputStack[i])
        }
        
        // inputStack에 있는 요소들 (순서대로)
        for element in inputStack {
            allElements.append(element)
        }
        
        print(allElements)
    }
}

func exampleOfQueue() {
    var q = Queue<Int>()
    
    q.push(1)
    q.push(2)
    q.push(3)
    
    _ = q.pop()
    _ = q.pop()
    
    q.push(4)
    q.push(5)
    
    _ = q.pop()
    
    q.push(1)
    
    q.printQueue()
}

func exampleOfBFS(grid: [[Int]], y: Int, x: Int) -> [(Int, Int)]{
    let rows = grid.count
    let cols = grid[0].count
    var visited = Array(repeating: Array(repeating: false, count: cols), count: rows)
    var queue = Queue<(Int, Int)>()
    var result: [(Int, Int)] = []
    
    let dy = [0, 1, 0, -1]
    let dx = [1, 0, -1, 0]
    
    queue.push((y, x))
    visited[y][x] = true
    
    while !queue.isEmpty() {
        let (cy, cx) = queue.pop()!
        result.append((cy, cx))
        
        for (dy, dx) in zip(dy, dx) {
            let nx = cx + dx
            let ny = cy + dy
            
            if ny >= 0 && ny < rows && nx >= 0 && nx < cols && !visited[ny][nx] && grid[ny][nx] == 1 {
                visited[ny][nx] = true
                queue.push((ny, nx))
            }
        }
    }
    
    return result
}

func exampleOfBfsRun() {
    let grid = [
        [1, 1, 0, 0],
        [1, 1, 0, 0],
        [0, 1, 1, 1],
        [0, 0, 1, 1]
    ]
    
    print(exampleOfBFS(grid: grid, y: 0, x: 0))
}
