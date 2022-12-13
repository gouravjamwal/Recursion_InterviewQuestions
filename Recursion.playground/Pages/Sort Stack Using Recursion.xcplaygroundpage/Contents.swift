import Foundation

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

func sortStack(stack: inout Stack) -> Stack {
    
    //Base
    if stack.count == 1 {
        return stack
    }
    
    //Hypothesis
    let value = stack.peek()
    stack.pop()
    sortStack(stack: &stack)

    //Induction
    insert(stack: &stack, temp: value)
    return stack
}

func insert(stack: inout Stack, temp: Int) {
    
    //Base
    if stack.count == 0 || stack.peek() <= temp {
        stack.push(element: temp)
        return
    }
    
    //Hypothesis
    let value = stack.peek()
    stack.pop()
    insert(stack: &stack, temp: temp)
    
    //Induction
    stack.push(element: value)
}

var stack = Stack()
stack.push(element: 3)
stack.push(element: 5)
stack.push(element: 2)
stack.push(element: 1)
stack.push(element: 0)

print(stack)
print(sortStack(stack: &stack))
