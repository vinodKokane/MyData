// 3.Write a function, taking two strings and determining 
// the second occurrence of the second string in the first string. 
// If the search string does not occur twice, -1 should be returned.

var str1 = "Software Developer";
var str2 = "Developer";
var count = 0;
function searchElement(x, y) {
    let ele = y[1]; // take second occurrence first
    // then check that 
    let filterData = [...x].map((e) => {

        if (e === ele) {
            count++;
        }
    }).join('');
    if (count < 2) {
        console.log("-1");
    } else {
        console.log(`Element:${ele} is ${count} times found.`);
    }
}
searchElement(str1, str2);