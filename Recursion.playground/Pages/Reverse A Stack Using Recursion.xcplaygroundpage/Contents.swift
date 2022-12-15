//: [Previous](@previous)

import Foundation

struct Stack {
    
    var items = [Int]()
    
    var count: Int {
        return items.count
    }
    
    func top() -> Int {
        guard let topElement = items.first else {
            fatalError("This stack is empty")
        }
        return topElement
    }
    
    mutating func push(element: Int) {
        items.insert(element, at: 0)
    }
    
    mutating func pop() -> Int {
        return items.removeFirst()
    }
}

func reverseAStack(stack: inout Stack) -> Stack {
    
    //Base
    if stack.count == 1 {
        return stack
    }
    
    //HYPOTHESIS
    let top = stack.top()
    _ = stack.pop()
    reverseAStack(stack: &stack)
    
    //INDUCTION
    insert(stack: &stack, temp: top)
    return stack
}

func insert(stack: inout Stack, temp: Int) {
    
    
    print("stack --> \(stack)")
    print("temp --> \(temp)")
    
    //BASE
    if stack.count == 0 {
        stack.push(element: temp)
        return
    }
    
    //HYPOTHESIS
    let top = stack.top()
    _ = stack.pop()
    insert(stack: &stack, temp: temp)
    
    //INDUCTION
    stack.push(element: top)
}

var stack = Stack()
stack.push(element: 1)
stack.push(element: 2)
stack.push(element: 3)
stack.push(element: 4)
stack.push(element: 5)

print(stack)
print(reverseAStack(stack: &stack))
