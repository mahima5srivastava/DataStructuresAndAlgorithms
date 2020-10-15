//: [Previous](@previous)

import Foundation
//Iterative
var arr = [1,123,35,13,-1,56,-98,25,15,84,135,-567]
var min: Int?
var max: Int?
for val in arr {
    if min == nil, max == nil {
        min = val
        max = val
    } else {
        if val > max! {
            max = val
        }
        if val < min! {
            min = val
        }
    }
}
print(min!, max!)

//Recursive
var recMin: Int?
var recMax: Int?
func minMax(_ a: [Int]) -> (min: Int, max: Int) {
    if a.count == 1 {
        return (min: a.first!, max: a.first!)
    } else if a.count == 2 {
        let minimum = a.first! < a.last! ? a.first! : a.last!
        let maximum = a.first! < a.last! ? a.last! : a.first!
        return (min: minimum, max: maximum)
    }
    let left = minMax(Array(a[0..<a.count/2]))
    let right = minMax(Array(a[a.count/2..<a.count]))
    if recMin == nil , recMax == nil {
        recMin = left.min < right.min ? left.min : right.min
        recMax = left.max > right.max ? left.max : right.max
        return (min: recMin!, max: recMax!)
    } else {
        let minimum = left.min < right.min ? left.min : right.min
        let maximum = left.max > right.max ? left.max : right.max
        recMin = recMin! > minimum ? minimum : recMin
        recMax = recMax! < maximum ? maximum : recMax
        return (min: minimum, max: maximum)
    }
}
arr = [1,123,35,13,-1,56,-98,25,15]
minMax(arr)
print(recMin!, recMax!)


