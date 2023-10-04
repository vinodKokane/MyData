// 4.Write a function, 
// taking a string and returning the first word in that string. 
// The first word are all characters up to the first space.

var str = "Software Developer";
var str2 = "";
function subStringFromUserString(s) {
    let arr = str.split(" ");
    str2 = arr[0];
    return str2;
}
var word = subStringFromUserString(str);
console.log(word);