/*
This function takes a positive integer n and prints a pyramid shape with n levels. For Example: 
Input : n = 3
Output:
  #
 ###
#####

Input: n = 10
Output: 
         #
        ###
       #####
      #######
     #########
    ###########
   #############
  ###############
 #################
###################
*/

function pyramid(n) {
    var s = -1
    for (level = n ; level > 0; level-- ) {
        s += 2
        var str = ""
        for (var space = 0; space < (level - 1); space++ ) {
            str += " "
        }
        for (var star = 0; star < s; star++) {
            str += "#"
        }
        console.log(str)
    }
}
pyramid(3)