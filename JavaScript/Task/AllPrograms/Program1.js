//  1.	Write a function, which returns the first character 
// that is not a space when a string is passed. 
// Input string ' Rosa Parks ' and output should be return 'R'.

var x = " Rosa Parks ", y = "";
function displayFirstChar(str) {
    var newStr = x.trim();
    console.log(newStr[0]);
    // for (let i = 0; i < str.length; i++) {
    //     if (str[i] != " ") {
    //         y += str[i];
    //     }
    // }
    // console.log(y[0]);
}
displayFirstChar(x);