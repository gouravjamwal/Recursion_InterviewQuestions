//: [Previous](@previous)

import Foundation

/*
 Given a string you need to print all possible strings that can be made by placing spaces (zero or one) in between them. The output should be printed in sorted increasing order of strings

 Example 1:

 Input:
 S = "ABC"
 Output: (A B C)(A BC)(AB C)(ABC)
 Explanation:
 ABC
 AB C
 A BC
 A B C
 These are the possible combination of "ABC".
  

 Example 2:

 Input:
 S = "AB"
 Output: (A B)(AB)

 Your Task:
 You don't need to read input or print anything. Your task is to complete the function permutation() which takes the string S as input parameters and returns the sorted array of the string denoting the different permutation (DON'T ADD '(' and ')' it will be handled by the driver code only).

 Expected Time Complexity: O(2^n)
 Expected Auxiliary Space: O(1)

  

 CONSTRAINTS:
 1 <= |S| < 10
 S only contains lowercase and Uppercase English letters.
 
 Link : https://practice.geeksforgeeks.org/problems/permutation-with-spaces3627/1
 */

func printPermutationsWithSpaces(_ ip: String,_ op: String) {
    
    let index = ip.index(ip.startIndex, offsetBy: 1)
    let substring = ip[..<index]
    
    let op = String(substring)
    let ip = String(ip.suffix(from: index))

    solve(ip, op)
}

func solve(_ ip: String,_ op: String) {
    if ip.count == 0 {
        print("result --> \(op)")
        return
    }
    
    let index = ip.index(ip.startIndex, offsetBy: 1)
    let substring = ip[..<index]
    
    var op1 = op + substring
    var op2 = op + " " + substring
    
    
    let ip = String(ip.suffix(from: index))
    solve(ip, op1)
    solve(ip, op2)
}

printPermutationsWithSpaces("ABC", "")
