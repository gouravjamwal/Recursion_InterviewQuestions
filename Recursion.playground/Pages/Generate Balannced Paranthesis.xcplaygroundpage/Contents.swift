//: [Previous](@previous)

import Foundation

/*

 Problem Description
  

 Given an integer A pairs of parentheses, write a function to generate all combinations of well-formed parentheses of length 2*A.



 Problem Constraints
 1 <= A <= 10



 Input Format
 First and only argument is integer A.



 Output Format
 Return a sorted list of all possible parenthesis.



 Example Input
 Input 1:

 A = 3
 Input 2:

 A = 1


 Example Output
 Output 1:

 [ "((()))", "(()())", "(())()", "()(())", "()()()" ]
 Output 2:

 [ "()" ]


 Example Explanation
 Explanation 1:

  All paranthesis are given in the output list.
 Explanation 2:

  All paranthesis are given in the output list.

 Link : https://www.interviewbit.com/problems/generate-all-parentheses-ii/
 */

func generateBalanncedParanthesis(output: String, op: Int, cl: Int) {
    if op == 0 && cl == 0 {
        print(op)
        return
    }
    if op == cl {
        generateBalanncedParanthesis(output: output + "(", op : op-1, cl: cl)
    } else {
        if op != 0 {
            generateBalanncedParanthesis(output: output + "(", op : op-1, cl: cl)
        }
        if cl != 0 {
            generateBalanncedParanthesis(output: output + ")", op : op, cl: cl-1)
        }
    }
}

generateBalanncedParanthesis(output: "", op: 3, cl: 3)
