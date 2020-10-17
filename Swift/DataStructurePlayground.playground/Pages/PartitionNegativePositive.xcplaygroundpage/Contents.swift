//: [Previous](@previous)

import Foundation

var arr = [1, -2, 3, -1, -90, 2, 3, 6]
var i = 0
var j = arr.count - 1
while i < j {
    if arr[i] < 0 && arr[j] > 0 {
        i += 1
        j -= 1
    } else if arr[i] < 0 {
        i += 1
    } else if arr[j] > 0 {
        j -= 1
    } else {
        let temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
        i += 1
        j -= 1
    }
}

print(arr)
