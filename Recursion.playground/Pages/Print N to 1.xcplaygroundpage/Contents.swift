import UIKit

func printSomething(n: Int){
    if n == 1 {
        print("1")
        return
    }
    print(n)
    printSomething(n: n-1)
}

printSomething(n: 7)
