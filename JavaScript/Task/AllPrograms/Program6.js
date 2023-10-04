// 6.Write a function, 
// that takes an array and an arbitrary variable. 
// The variable should be inserted as the first element in the array. 
// The array should be returned.

var ar = [1, 2, 3, 4, 5];
var b = 10;

function addElement(data, el) {
    // data.unshift(el);
    // return data;
    let newArr = [el, ...data];
    console.log(newArr);
}
// let updatedArray = addElement(ar, b);
// console.log("Updated Array Is \n", updatedArray);
addElement(ar, b);