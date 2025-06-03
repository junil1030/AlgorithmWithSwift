//
//  RealNumber.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 6/3/25.
//

import Foundation

func realNumber1() {
    let x: Int = 5
    let sqrtX = sqrt(Double(x))
    let powX = pow(Double(x), 2)
    
    print(Int(sqrtX))   // 2
    print(powX)         // 25.0
}

func realNumber2() {
    let a: Int = 1
    let b: Int = 2
    
    print(a/b)                      // 0
    print(Double(a/b))              // 0.0
    print(Double(a) / Double(b))    // 0.5
}

func realNumber3() {
    let arr = [3, 4, 1, 2, 5]
    var arr2 = [3, 4, 1, 2, 5]
    
    // sorted는 새롭게 정렬시켜서 return
    // sort는 기존 배열을 정렬 return이 없음
    
    let arr3 = arr.sorted(by: >)
    let arr4 = arr.sorted()
    arr2.sort()
    
    print(arr)
    print(arr2)
    print(arr3)
    print(arr4)
    
    struct Person {
        let name: String
        let age: Int
    }
    
    let personArray = [Person(name: "Haaland", age: 24), Person(name: "DeBruyne", age: 33), Person(name: "Rodrigo", age: 28)]
    
    let sortedPersonArray = personArray.sorted { $0.age < $1.age }
    
    print(sortedPersonArray)
}

func realNumber4() {
    for i in stride(from: 0, to: 10, by: 2) {
        print(i)
    }
}

func realNumber5() {
    let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    let evenFilter = arr.filter { $0 % 2 == 0 }
    print(evenFilter)
    
    let toString = arr.map { String($0) }
    print(toString)
    
    let arrStr = arr.reduce("") { "\($0)\($1)" }
    print(arrStr)
}
