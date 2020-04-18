/*
This code finds out if two strings are anagrams of each other.
A string is an anagram of another string if it contains same characters in same quantities. Ignore spaces and punctuations. Lowercased characters are same as uppercased characters.
*/
var s1 = "rail safety".toLowerCase()
var s2 = "fairy taless!!!".toLowerCase()

function isAnagram(s1, s2) {
    s1 = s1.toLowerCase()
    s2 = s2.toLowerCase()
    var countObj = {}
    for (s of s1) {
        if (s.match(/[a-z]/i)) {
            if (countObj[s] !== undefined) {
                countObj[s] += 1
            } else {
            countObj[s] = 1
            }
        }
    }

    for (s of s2) {
        if (s.match(/[a-z]/i)) {
        if (countObj[s] !== undefined) {
            countObj[s] -= 1
        } else {
            return false
        }
        }
    }
   console.log(countObj)
   for (val of Object.keys(countObj)) {
        if (countObj[val] !== 0) {
        return false
        }
   } 
    return true
   
}

console.log(isAnagram(s1, s2))