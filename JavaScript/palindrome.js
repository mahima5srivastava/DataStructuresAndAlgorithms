/*
This code will check if a string is pallindrome.
*/

let str = "abba"
var revStr = str.split("").reverse().join("")
console.log(revStr == str)