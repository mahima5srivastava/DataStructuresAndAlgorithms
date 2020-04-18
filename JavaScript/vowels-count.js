/*
This code will count the number of vowels in the given String
*/

function countVowels(str) {
    var count = 0
    var checker = ["a", "e", "i", "o", "u"]
    for (s of str) {
        if (checker.includes(s)) {
            count++
        }
    }
    return count
} 

console.log(countVowels("Mahima is a good girl!!!"))