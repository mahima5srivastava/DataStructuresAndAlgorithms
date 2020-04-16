/*
This code will print the numbers from 1 to n. 
However, if a number is a multiple of 3 print "fizz", 
if a number is a multiple of 5 print "buzz", 
if a number is a multiple of both 3 and 5 print "fizzbuzz"
*/


let n = 50

for (let i = 1; i <= n; i++) {
    let isMultilpleOf15 = i % 15 == 0
    let isMultipleOf3 = i % 3 == 0
    let isMultipleOf5 = i % 5 == 0
    if (isMultilpleOf15) {
        console.log("fizzbuzz")
    } else if (isMultipleOf3) {
        console.log("fizz")
    } else if (isMultipleOf5) {
        console.log("buzz")
    } else {
        console.log(i)
    }
}