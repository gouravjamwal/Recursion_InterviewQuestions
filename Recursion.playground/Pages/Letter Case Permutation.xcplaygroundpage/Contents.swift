//: [Previous](@previous)

import Foundation

func letterCasePermutation(ip: String, op: String) {
    if ip.count == 0 {
        print(op)
        return
    }
    
    let index = ip.index(ip.startIndex, offsetBy: 1)
    let substring = ip[..<index]
    
    let character = Array(String(substring))[0]
    
    if !character.isNumber {
        let op1 = op + String(substring).lowercased()
        let op2 = op + String(substring).uppercased()
        let ip = String(ip.suffix(from: index))
        letterCasePermutation(ip: ip, op: op1)
        letterCasePermutation(ip: ip, op: op2)
    } else {
        let op1 = op + String(substring)
        let ip = String(ip.suffix(from: index))
        letterCasePermutation(ip: ip, op: op1)
    }
}

letterCasePermutation(ip: "a1B2", op: "")
