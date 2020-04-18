/*
This function takes a positive integer n and prints steps shape with n levels. For Example: 
Input : n = 3
Output:
#
##
###
Input : n = 5
Output:
#
##
###
####
#####
*/

function steps(n) {
    for (i = 0; i < n; i++) {
        var str = ""
        for (j = 0; j <= i; j++) {
         str += "#"  
        }
        console.log(str)
    } 
}
steps(10)