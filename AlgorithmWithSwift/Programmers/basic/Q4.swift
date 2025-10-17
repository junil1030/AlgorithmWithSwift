//
//  Q4.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/15/25.
//

import Foundation

func Q4(_ letter: String) -> String {
    let morse = [
    ".-":   "a",
    "-...": "b",
    "-.-.": "c",
    "-..":  "d",
    ".":    "e",
    "..-.": "f",
    "--.":  "g",
    "....": "h",
    "..":   "i",
    ".---": "j",
    "-.-":  "k",
    ".-..": "l",
    "--":   "m",
    "-.":   "n",
    "---":  "o",
    ".--.": "p",
    "--.-": "q",
    ".-.":  "r",
    "...":  "s",
    "-":    "t",
    "..-":  "u",
    "...-": "v",
    ".--":  "w",
    "-..-": "x",
    "-.--": "y",
    "--..": "z"
    ]
    
    let ary = letter.split(separator: " ")
    let result = ary.map { morse[String($0)]! }.joined()
    
    return result
}
