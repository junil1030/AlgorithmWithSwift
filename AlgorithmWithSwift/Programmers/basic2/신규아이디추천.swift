//
//  신규아이디추천.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 2/21/26.
//

import Foundation

func 신규아이디추천(_ new_id:String) -> String {
    // 1. 대문자
    let one = new_id.lowercased()
    
    print(one)
    
    // 2. 특수문자 제거
    var two = ""
    let twoTemp = one.map { $0 }
    for char in twoTemp {
        if char.isLetter || char.isNumber || char == "-" || char == "_" || char == "." {
            two.append(char)
        }
    }
    
    print(two)
    
    // 3. 연속 마침표 합치기
    var three = ""
    let threeTemp = two.map { $0 }
    var isEnd = false
    for i in 0..<threeTemp.count {
        if threeTemp.count == 1 {
            three.append(threeTemp[i])
            break
        }
        if threeTemp[i] == "." {
            isEnd = true
            continue
        }
        if isEnd, threeTemp[i] != "." {
            three.append(contentsOf: [".", threeTemp[i]])
            isEnd = false
            continue
        }
        three.append(threeTemp[i])
    }
    
    print(three)
    
    // 4. 처음, 끝 제거
    var four = ""
    var fourTemp = three.map { $0 }
    if fourTemp.first == "." { fourTemp.removeFirst() }
    if fourTemp.last == "." { fourTemp.removeLast() }
    four = fourTemp.map { String($0) }.joined(separator: "")
    
    print(four)
    
    // 5. 빈 문자열일경우 a 대입
    var five = ""
    if four.isEmpty {
        five = "a"
    } else {
        five = four
    }
    
    print(five)
    
    // 6-1. 16자 이상일 경우 15자만 남기고 제거
    // 6-2. 마지막에 . 있으면 제거
    var six = ""
    var sixTemp = ""
    if five.count >= 16 {
        sixTemp = five.prefix(15).map { String($0) }.joined(separator: "")
    }
    else { sixTemp = five }
    if sixTemp.last == "." {
        sixTemp.removeLast()
    }
    six = sixTemp
    
    print(six)
    
    // 7. 2자 이하일 경우 길이가 3이 될 때까지 마지막 문자 삽입
    var seven = ""
    if six.count < 3 {
        var sevenTemp = six.map { String($0) }
        let last = sevenTemp.last
        while sevenTemp.count < 3 {
            sevenTemp.append(last!)
        }
        seven = sevenTemp.joined(separator: "")
    } else {
        seven = six
    }
    
    return seven
}
