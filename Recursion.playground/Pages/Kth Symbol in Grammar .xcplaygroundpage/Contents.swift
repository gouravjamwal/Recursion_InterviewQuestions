import Foundation

/*
 On the first row, we write a 0. Now in every subsequent row, we look at the previous row and replace each occurrence of 0 with 01, and each occurrence of 1 with 10.

 Given row N and index K, return the K-th indexed symbol in row N. (The values of K are 1-indexed.) (1 indexed).
 */

func solve(n: Int, k: Int) -> Int {
    
    //BASE
    if n == 1 || k == 1 {
        return 0
    }
    
    //HYPOTHESIS
    let mid: Int = Int("\(pow(2, n-1))")!/2
    if k <= Int(mid) {
        return solve(n: n-1, k: k)
    } else {
        let val = solve(n: n-1, k: k-Int(mid))
        return (val == 0) ? 1 : 0
    }
}

print(solve(n: 10, k: 6))
