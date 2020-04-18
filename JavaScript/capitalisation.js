/*
This function takes a string and capitalizes first letter of all the words in the String.
*/

function capitalize(str) {
    var strArr = str.split(" ")
    for (i = 0; i< strArr.length; i++) {
        strArr[i] = strArr[i].charAt(0).toUpperCase() + strArr[i].slice(1)
    }
    return strArr.join(" ")
}
    
console.log(capitalize("Mahima is a good girl!!!"))