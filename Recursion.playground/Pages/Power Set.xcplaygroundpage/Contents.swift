//: [Previous](@previous)

import Foundation

func powerset(array: [Int], index: Int? = nil) -> [[Int]] {
  // Write your code here.
  var subsets: [[Int]] = [[]]
    
    print(subsets.count)

   for element in array {
     for subset in subsets {
        subsets.append(subset + [element])
     }
  }
  return subsets
}

print(powerset(array: [1, 2, 3]))
