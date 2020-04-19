//: [Previous](@previous)

import Foundation
/*
 This code will show the implementation of queue data structure. It will have following methods:
    1. Insertion (1,2,3,4) -> Insert 5 -> (1,2,3,4,5)
    2. Deletion (1,2,3,4,5) -> Delete -> (2,3,4,5)
    3. Getting the count of elements in queue
    4. Get all the values
 
 */
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

var bullet = Queue<Int>()

bullet.push(val: 0)
bullet.push(val: 1)
bullet.push(val: 2)
bullet.push(val: 3)
print(bullet.getValues())
print(bullet.getCountOfElements())
print(bullet.delete() ?? "")
print(bullet.getValues())
print(bullet.getCountOfElements())

var strBullet = Queue<String>()

strBullet.push(val: "M")
strBullet.push(val: "A")
strBullet.push(val: "H")
strBullet.push(val: "I")
strBullet.push(val: "M")
strBullet.push(val: "A")
print(strBullet.getValues())
print(strBullet.getCountOfElements())
print(strBullet.delete() ?? "")
print(strBullet.getValues())
print(strBullet.getCountOfElements())



//: [Next](@next)
