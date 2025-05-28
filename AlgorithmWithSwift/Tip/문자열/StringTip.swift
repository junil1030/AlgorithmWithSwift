//
//  StringTip.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 5/28/25.
//

import Foundation

func stringTip1() {
    let s = "abcdef"
    let s1 = s.prefix(3)    // abc
    let s2 = s.suffix(3)    // def
    let s3 = s.dropFirst(3) // def
    let s4 = s.dropLast(3)  // abc
}

func stringTip2() {
    let s = "abcdef"
    let x = s[s.index(s.startIndex, offsetBy: 3)]   // d Character타입
    
    let arr = [0, 1, 2, 3, 4]
    let str = "abced"
    
    // 배열은 인덱스 접근이 가능
    let arr2 = arr[0..<3]
    let num = arr[2]
    
    // 문자열은 불가능 String.Index 형으로 접근 가능
    // 때문에 extension으로 서브스크립트를 사용해주면 편리하게 사용할 수 있음
    let i = str.startIndex
    let j = str.index(i, offsetBy: 3)
    let str2 = str[i..<j]
    
    // extension으로 서브스크립트 접근 가능
    let char = str[3]
    
    print(arr2) // [0 ,1, 2]
    print(str2) // abc
    print(num)  // 2
    print(char) // e
}

extension String {
    subscript(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

func stringTip3() {
    // 문자열을 자를 때에는
    let s = "abcdef"
    let s1 = s[s.startIndex ..< s.index(s.startIndex, offsetBy: 3)]
    // s1의 타입은 subString이기 때문에 변환을 해주어야 함
    
    var arr: String = ""
    arr.append(String(s1))
    print(arr)  // abc
}

func stringTip4() {
    // 문자열 뒤집기
    let s = "Hello Swift. I'm C++"
    print(String(s.reversed())) // ++C m'I .tfiwS olleH
}

func stringTip5() {
    // 문자열 곱셈
    let s = "Hello Swift. I'm C++"
    print(String(repeating: s, count: 2)) // Hello Swift. I'm C++Hello Swift. I'm C++
}

func stringTip6() {
    // 문자열 교체
    let s = "abced"
    let s1 = "Swift"
    let result = s.replacingOccurrences(of: "ab", with: s1)
    print(result)   // Swiftced
}

func stringTip7() {
    // Index 타입을 Int로 변환
    let letters = "abcdef"
    let char: Character = "c"
    
    // Index타입이기 때문에 정수 값으로 변환 불가
    // extension을 활용하자
}

extension StringProtocol {
    func distance(of element: Element) -> Int? { firstIndex(of: element)?.distance(in: self) }
    func distance<S: StringProtocol>(of string: S) -> Int? { range(of: string)?.lowerBound.distance(in: self) }
}
extension Collection {
    func distance(to index: Index) -> Int { distance(from: startIndex, to: index) }
}
extension String.Index {
    func distance<S: StringProtocol>(in string: S) -> Int { string.distance(to: self) }
}
