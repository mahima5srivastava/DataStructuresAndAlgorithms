/*
This program will reverse the given string in two ways without using reverse method. 
Time Complexity
*/
var str = "Mahima"
var output = ""

//Method 1 - time complexity O(n)
for (let character of str) {
    output = character + output
}
console.log(output)


//Method 2 - time complexity O(n)
console.log(str.split('').reduce((reversed, character) => {return character + reversed}, ""))