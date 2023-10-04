// 10.Write a function 
// reverse that reverses 
// the order of the characters in a string. 
// The function should be recursive. 
// Example: reverse('live') should return 'evil'

var str = "live";
console.log("-------------Original Word----------------\n", str);
function reverseString(s) {
    let revStr = [...s].reverse();
    return revStr.join('');
}
let reverseAll = reverseString(str);
console.log("-------Reverse String with Char--------\n", reverseAll);