//: [Previous](@previous)

import Foundation

var arr = [-2, -3, -4, -1, -2, -1, -5, -3]
var max = Int.min
var maxEnd = 0

for val in arr {
    maxEnd = maxEnd + val
    if max < maxEnd {
        max = maxEnd
    }
    if maxEnd < 0 {
        maxEnd = 0
    }
}

print(max)


