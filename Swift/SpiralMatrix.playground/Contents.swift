import UIKit
/*
This function accepts a positive interger n and creates a matrix of n*n with values from 1 to n*n
For example:
Input: n = 3
Output:
[
 [1,2,3]
 [8,9,4]
 [7,6,5]
]
*/

func spiralMatrix(_ n: Int) -> [[Int]] {
    var matrix: [[Int]] = []
    for _ in 0..<n {
        var row: [Int] = []
        for _ in 0..<n {
            row.append(0)
        }
        matrix.append(row)
    }
    var moveToNext = false
    var num = 0
    var i = 0
    var j = -1
    while (num < (n*n)) {
        moveToNext = false
        //left to right - i same, j increment
        while (moveToNext == false) {
            if ((j + 1) >= n) {
                moveToNext = true
                break
            }
            if matrix[i][j + 1] != 0 {
                moveToNext = true
                break
            }
            num += 1
            j += 1
            matrix[i][j] = num
        }
        
        moveToNext = false
        //top to bottom - i increment, j same
        while (moveToNext == false) {
            if (i + 1) >= n {
                moveToNext = true
                break
            }
            if matrix[i+1][j] != 0 {
                moveToNext = true
                break
            }
            num += 1
            i += 1
            matrix[i][j] = num
        }
        
        moveToNext = false
        //right to left - i same, j decrement
        while (moveToNext == false) {
            if (j - 1) < 0 {
                moveToNext = true
                break
            }
            if matrix[i][j - 1] != 0 {
                moveToNext = true
                break
            }
            num += 1
            j -= 1
            matrix[i][j] = num
        }
        
        moveToNext = false
        //bottom to top - i decrement, j same
        while (moveToNext == false) {
            if (i - 1) < 0 {
                moveToNext = true
                break
            }
            if matrix[i - 1][j] != 0 {
                moveToNext = true
                break
            }
            num += 1
            i -= 1
            matrix[i][j] = num
        }
        
    }
    return matrix
}

/*
This function will print the matrix in multiple lines for better visualisation
*/

func printMatrix(_ matrix: [[Int]]) {
    for row in matrix {
        print(row)
    }
}

printMatrix(spiralMatrix(10))

