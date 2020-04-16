/*
This code finds the most commonly used character in a string
*/

let input = "Mahima Srivastava"
var countDict = {}
var max = 0
var maxChar = ""
for (val of input) {
    if (countDict[val] != null) {
        countDict[val] += 1
    } else {
        countDict[val] = 1
    }
    
}

for (key of Object.keys(countDict)) {
    if (countDict[key] > max) {
        max = countDict[key]
        maxChar = key
    }
}
console.log(maxChar)