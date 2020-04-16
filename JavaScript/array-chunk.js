/*
Given an array and chunk size, divide the array into many subarrays where each array is of length size.
*/

function chunkArray(array, size) {
    let chunks = [];
    let i = 0;
    let chunk = [];
    for(let val of array) {
        if (i < size) {
            chunk.push(val);
            i++;
        } 
        if(i === size) {
            i = 0;
            chunks.push(chunk);
            chunk = [];
        }
    }
    
    if(chunk.length > 0) {
     chunks.push(chunk);   
    }
    
    return chunks;
}

console.log(chunkArray([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 3))
