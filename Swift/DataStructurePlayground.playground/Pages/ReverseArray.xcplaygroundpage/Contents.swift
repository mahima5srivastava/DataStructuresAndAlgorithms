//: [Previous](@previous)

import Foundation
//Iterative reverse
var arr = [1,3,1,2,4,63,83,12,46,31]
var j = arr.count - 1
for i in 0..<arr.count {
    if i == j {
        break
    }
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    j -= 1
}
print(arr)

//Recursive reverse

func reverse(_ i: Int, j: Int) {
    if i >= arr.count || j < 0 || i >= j {
        return
    }
    var i = i
    var j = j
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    i += 1
    j -= 1
    
    reverse(i, j: j)
}
reverse(0, j: arr.count - 1)
print(arr)
