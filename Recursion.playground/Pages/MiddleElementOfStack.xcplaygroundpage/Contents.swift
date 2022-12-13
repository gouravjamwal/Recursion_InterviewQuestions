import Foundation

/*
 If elements are 6, k(middle element) = size/2 + 1 = 6/2 + 1 = 4 (index)
 If elements are 5, k(middle element) = size/2 + 1 = 5/2 + 1 = 2.5 +1 = 2(Converted to integer) + 1 = 3 (index)
 */

struct Stack {
    private var items = [Int]()
    
    var count: Int {
        return items.count
    }
    
    func peek() -> Int {
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

func deleteMiddleElementOfStack(stack: inout Stack) -> Stack {
    let k = (stack.count/2) + 1
    delete(stack: &stack, k: k)
    return stack
}

func delete(stack: inout Stack, k: Int) {
    
    if stack.count == k {
        _ = stack.pop()
        return
    }
    
    let temp = stack.pop()
    delete(stack: &stack, k: k)
    stack.push(element: temp)
}

var stack = Stack()
stack.push(element: 1)
stack.push(element: 2)
stack.push(element: 3)
stack.push(element: 4)
stack.push(element: 5)

print(stack)
print(deleteMiddleElementOfStack(stack: &stack))
