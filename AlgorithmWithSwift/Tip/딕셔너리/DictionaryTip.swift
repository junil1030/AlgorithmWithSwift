//
//  DictionaryTip.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 5/28/25.
//

import Foundation

func dictTip1() {
    // 원소를 확인할 때
    let myDict: [String: Int] = [:]
    
    if let val = myDict["a"] {
        print(val)
    } else {
        print("없어요")
    }
}

func dictTip2() {
    // 원소 개수를 확인할 때
    let myDict = ["a": 1, "b": 2, "c": 3]
    
    print(myDict.count) // 3
    if !myDict.isEmpty {
        print("비어있지 않습니다.")
    }
}

func dictTip3() {
    // 원소를 삭제할 때
    var myDict = ["a": 1, "b": 2, "c": 3]
    
    myDict.removeValue(forKey: "b") // 시간복잡도: O(1)
    myDict["b"] = nil               // 시간복잡도: O(1), 제일 간결하기 때문에 오타 가능성 낮아서 이걸 사용하는게 좋음
    myDict.remove(at: myDict.index(myDict.startIndex, offsetBy: 1)) // 시간복잡도: O(n)
}

func dictTip4() {
    let myDict = ["a": 1, "b": 2, "c": 3]
    
    print(myDict["d", default: 0])  // 없을 경우 디폴트 값을 내보내주지만 원본을 수정하는 것은 아님
    print(myDict.count)             // d가 0으로 표기되었지만 myDict의 갯수는 3이므로 추가의 개념은 아님
}

func dictTip5() {
    var a: [String: Int] = [:]
    var b: [String: Int] = [:]
    
    a["a"] = 1
    a["b"] = 2
    
    b["b"] = 2
    b["a"] = 1
    
    print(a == b)   // true
    
    b["c"] = 3
    print(a == b)   // false
}
