// 7.	Write a function, that rotates the elements of an array.
//  All elements should be moved one position to the left.
//  The 0th element should be placed at the end of the array.
//  The rotated array should be returned.

// Example: rotate(['a', 'b', 'c']) should return ['b', 'c', 'a'].

var ar = ['a', 'b', 'c'];

function rotatedArray(a) {
    let first = a[0];
    for (let i = 0; i < a.length; i++) {
        a[i] = a[i + 1];
    }
    a[a.length - 1] = first;
}
rotatedArray(ar);
console.log(ar);