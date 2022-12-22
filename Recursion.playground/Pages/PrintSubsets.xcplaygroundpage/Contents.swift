//: [Previous](@previous)

import Foundation

//Print Subsets | Print PowerSets | Print all Subsequences

func solve(_ ip: String,_ op: String) {
    if ip.count == 0 {
        print("result --> \(op)")
        return
    }
    
    let op1 = op
    
    let index = ip.index(ip.startIndex, offsetBy: 1)
    let substring = ip[..<index]
    var op2 = op + substring
    
    
    let ip = String(ip.suffix(from: index))
    solve(ip, op1)
    solve(ip, op2)
}

solve( "abc", "")
