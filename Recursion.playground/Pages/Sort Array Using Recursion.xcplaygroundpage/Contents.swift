//: [Previous](@previous)

import Foundation

func sortArray(arr: inout [Int]) -> [Int] {
   
    //Base
    if arr.count == 1 {
        return arr
    }
    
    //Hypothesis
    let temp = arr[arr.count-1]
    arr.remove(at: arr.count-1)
    arr = sortArray(arr: &arr)
    
    //Induction
    insertArr(arr: &arr, temp: temp)
    return arr
}

func insertArr(arr: inout[Int], temp: Int) {
    
    //Base
    if arr.count == 0 || arr[arr.count-1] <= temp {
        arr.append(temp)
        return
    }
    
    //Hypothesis
    let val = arr[arr.count-1]
    arr.remove(at: arr.count-1)
    insertArr(arr: &arr, temp: temp)
    
    //Induction
    arr.append(val)
}

var array = [9,1,3,2,4,7,6,5]
print(sortArray(arr: &array))
