//
//  20006.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 1/6/26.
//

import Foundation

struct Player {
    let level: Int
    let nick: String
}

struct Room {
    let baseLevel: Int
    var players: [Player]
    let capacity: Int
    
    var isStarted: Bool {
        players.count == capacity
    }
    
    func canEnter(_ player: Player) -> Bool {
        return abs(player.level - baseLevel) <= 10 && players.count < capacity
    }
}

func q20006() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let p = input[0]; let m = input[1]
    
    var rooms: [Room] = []
    
    for _ in 0..<p {
        let input = readLine()!.split(separator: " ")
        let lev = Int(input[0])!; let nick = String(input[1])
        let player = Player(level: lev, nick: nick)
        
        var entered = false
        
        for i in 0..<rooms.count {
            if rooms[i].canEnter(player) {
                rooms[i].players.append(player)
                entered = true
                break
            }
        }
        
        if !entered {
            let newRoom = Room(baseLevel: player.level, players: [player], capacity: m)
            rooms.append(newRoom)
        }
    }
    
    for room in rooms {
        if room.isStarted {
            print("Started!")
        } else {
            print("waiting!")
        }
        
        let sortedPlayers = room.players.sorted { $0.nick < $1.nick }
        
        for player in sortedPlayers {
            print("\(player.level) \(player.nick)")
        }
    }
}
