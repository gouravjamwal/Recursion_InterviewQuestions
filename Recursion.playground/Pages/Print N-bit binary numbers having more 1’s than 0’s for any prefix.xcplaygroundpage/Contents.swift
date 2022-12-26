//: [Previous](@previous)

import Foundation

func solve(op: String, zero: Int, one: Int, n: Int) {
    
    if n == 0 {
        print(op)
        return
    }
    
    if one == zero {
        // when zero and 1 both are same then we need to give prreference to 1
        let op1 = "\(op)1"
        solve(op: op1, zero: zero, one: one+1, n: n-1)
    }
    
    if zero < one {
        let op1 = "\(op)0"
        let op2 = "\(op)1"
        
        solve(op: op1, zero: zero+1, one: one, n: n-1)
        solve(op: op2, zero: zero, one: one+1, n: n-1)
    }
    return
}

solve(op: "", zero: 0, one: 0, n: 5)
