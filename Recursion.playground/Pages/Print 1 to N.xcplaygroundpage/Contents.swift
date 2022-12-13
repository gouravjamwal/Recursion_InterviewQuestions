//: [Previous](@previous)

import Foundation

func printSomething(n: Int){
    if n == 0 {
        return
    }
    printSomething(n: n-1)
    print(n)
}

printSomething(n: 7)
