import UIKit

/*
 This code shows the implemetation of Stack. It will have following functions.
 1. Push or insertion - (1,2,3,4,5) - Insert 6 - (1,2,3,4,5,6)
 2. Pop or deletion - (1,2,3,4,5) - Delete - (1,2,3,,)
 3. Fetch all the values
 4. Get count of values
 5. Remove n elements - (1,2,3,4,5) - Remove 3 values - (1,2)
 */
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
    
    mutating func getValues() -> [T] {
        return list
    }
    
    mutating func count() -> Int {
        return list.count
    }
}

var pileOfPlates = Stack<Int>()
pileOfPlates.push(1)
pileOfPlates.push(2)
pileOfPlates.push(3)
pileOfPlates.push(4)
pileOfPlates.push(5)
print(pileOfPlates.getValues())
print(pileOfPlates)
pileOfPlates.removeValues(2)
print(pileOfPlates.getValues())
pileOfPlates.pop()
print(pileOfPlates.getValues())
print(pileOfPlates.count())
