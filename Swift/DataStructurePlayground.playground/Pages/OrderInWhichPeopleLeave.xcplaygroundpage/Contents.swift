//: [Previous](@previous)

import Foundation

func trackExitSequence(of queue: [Int], maxAmount: Int) -> String {
    var output = ""
    var queue = queue
    var indicies = Array(0..<queue.count)
    while !queue.isEmpty {
        if queue.first! - maxAmount > 0 {
            queue.append(queue.first! - maxAmount)
            indicies.append(indicies.first!)
        } else {
            output += " \(indicies.first! + 1)"
        }
        indicies.removeFirst()
        queue.removeFirst()
    }
    return output
}

print(trackExitSequence(of: [2,7,4], maxAmount: 3))
