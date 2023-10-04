// 9.Write a function, that concatenate two arrays. 
// The longer array should be appended to the shorter array.
// If both arrays are equally long,
// the second array should be appended to the first array. 	
// Example: concatUp([1, 2], [3]) should 
// return [3, 1, 2] and concatUp([5, 7], [6, 8]) should return [5, 7, 6, 8].

var ar1 = [1, 2];
var ar2 = [3];

function margeArray(x, y) {
    if (x.length > y.length) {
        let concatAr = [...y, ...x];
        console.log(concatAr)
    } else if (x.length == y.length) {
        let equalAr = [...x, ...y];
        console.log(equalAr);
    }
}
margeArray(ar1, ar2);