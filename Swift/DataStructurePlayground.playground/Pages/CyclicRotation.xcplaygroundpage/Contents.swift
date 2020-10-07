//: [Previous](@previous)

import Foundation

var arr = [1,3,291,12,4,8,4,2,53,564,76,575,6,3,45,23,2,124,45]

func rotate(_ arr: [Int]) -> [Int] {
    var arr = arr
    var next = arr[0]
    arr[0] = arr[arr.count - 1]
    for i in 1..<(arr.count) {
        let temp = arr[i]
        arr[i] = next
        next = temp
    }
    return arr
}
print(rotate(arr))

