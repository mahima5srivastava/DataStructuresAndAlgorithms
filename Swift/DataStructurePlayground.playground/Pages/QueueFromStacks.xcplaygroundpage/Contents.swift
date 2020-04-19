//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
struct Queue<T> {
   private var list: [T] = []
   
   mutating func push(val: T) {
       list.append(val)
   }
   
   mutating func delete() -> T? {
       return list.remove(at: 0)
   }
   
   func getCountOfElements() -> Int {
       return list.count
   }
   
    func getValues() -> [T] {
       return list
   }
}

struct Stack<T> {
    private var list: [T] = []
    
    mutating func push(_ val: T) {
        list.append(val)
    }
    
    mutating func pop() -> T? {
        return list.remove(at: (list.count - 1))
    }

    mutating func removeValues(_ n : Int) {
        for _ in 0..<n {
            pop()
        }
    }
    
    func getValues() -> [T] {
        return list
    }
    
    func count() -> Int {
        return list.count
    }
}

var stack1 = Stack<Int>()
stack1.push(1)
stack1.push(2)
stack1.push(3)
stack1.push(4)
stack1.push(5)

var stack2 = Stack<Int>()
stack2.push(1)
stack2.push(2)

var stack3 = Stack<Int>()
stack3.push(1)
stack3.push(2)
stack3.push(3)

var stackQueue = Queue<Stack<Int>>()
stackQueue.push(val: stack1)
stackQueue.push(val: stack2)
stackQueue.push(val: stack3)

for stack in stackQueue.getValues() {
    print(stack.getValues())
}
//: [Next](@next)
