// 2.Write a function taking two strings and determining 
// the first occurrence of 
// the second string in the first string. 
// The function should be case insensitive.

var x = "ADMIN";
var y = "admin";

function findOccurrence(a, b) {
    let element = b[0];
    let findElement = a.toLowerCase().includes(element.toLowerCase());
    return findElement === false ? console.log("Sorry.....!!!Element Is Not Found....!!") : console.log("Congratulation ......!!!Element is Found In First String....!!!");
}
findOccurrence(x, y);