//: [Previous](@previous)

import Foundation

/*
 Print all permutations of a string keeping the sequence but changing cases.

 Examples:

 Input : ab
 Output : AB Ab ab aB

 Input : ABC
 Output : abc Abc aBc ABc abC AbC aBC ABC
 
 Link : https://www.geeksforgeeks.org/permute-string-changing-case/
 */

func permutationWithCaseChange(ip: String, op: String) {
    
    if ip.count == 0 {
        print(op)
        return
    }
    
    let index = ip.index(ip.startIndex, offsetBy: 1)
    let substring = ip[..<index]
    
    let op1 = op + String(substring)
    let op2 = op + String(substring).uppercased()
    
    let ip = String(ip.suffix(from: index))

    permutationWithCaseChange(ip: ip, op: op1)
    permutationWithCaseChange(ip: ip, op: op2)
}

permutationWithCaseChange(ip: "abc", op: "")
