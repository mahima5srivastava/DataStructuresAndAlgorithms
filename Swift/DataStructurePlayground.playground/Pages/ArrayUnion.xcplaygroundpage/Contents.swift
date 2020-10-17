//: [Previous](@previous)

import Foundation

var a = [1,4,7,9,12,17,39,50]
var b = [2,3,5,7,17,34,50,56]

func union(_ a: [Int], _ b: [Int]) -> [Int] {
    var unionArr: [Int] = []
    let sortedA = a.sorted()
    let sortedB = b.sorted()
    var aIndex = 0
    var bIndex = 0
    while aIndex < sortedA.count && bIndex < sortedB.count {
        if sortedA[aIndex] < sortedB[bIndex] {
            unionArr.append(sortedA[aIndex])
            aIndex += 1
        } else if sortedA[aIndex] > sortedB[bIndex]  {
            unionArr.append(sortedB[bIndex])
            bIndex += 1
        } else {
            unionArr.append(sortedA[aIndex])
            aIndex += 1
            bIndex += 1
        }
    }
    while aIndex < sortedA.count {
        unionArr.append(sortedA[aIndex])
        aIndex += 1
    }
    while bIndex < sortedB.count {
        unionArr.append(sortedB[bIndex])
        bIndex += 1
    }
    return unionArr
}
func intersection(_ a: [Int], _ b: [Int]) -> [Int] {
    var setB: Set<Int> = []
    let setA = Set(a)
    for val in b {
        if setA.contains(val) {
            setB.insert(val)
        }
    }
    return Array(setB)
}
print(union(a, b))
print(intersection(a,b))
