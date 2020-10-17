//: [Previous](@previous)

import Foundation

var arr = [7, 10, 4, 3, 20, 15]

var minHeap = Array(repeating: -1, count: arr.count)

func insert(_ val: Int, at index: Int) {
    minHeap[index] = val
    var currentIndex = index
    var parentIndex = (currentIndex - 1) / 2
    
    while minHeap[parentIndex] < val {
        let temp = minHeap[parentIndex]
        minHeap[parentIndex] = minHeap[currentIndex]
        minHeap[currentIndex] = temp
        currentIndex = parentIndex
        parentIndex = (currentIndex - 1) / 2
    }
}


for (i,val) in arr.enumerated() {
    insert(val, at: i)
}
print(minHeap)
