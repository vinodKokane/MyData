// 8.Write a function add that adds an element to the end of an array.
// However, the element should only be added
// if it is not already in the array.
// Example: add([1, 2], 3)
// should return [1, 2, 3] and
// add([1, 2], 2) should return [1, 2].

var ar = [1, 2];
var num = 2;

console.log("first array\n", ar)

function addElement(a, no) {
    return !a.includes(no) ? a.push(no) : null;
}
addElement(ar, num);
console.log([...ar]);
