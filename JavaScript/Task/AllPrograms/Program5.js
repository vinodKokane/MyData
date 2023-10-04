// 5.	Write a function, that replaces '-' with '/' in a date string.
// Example: normalize('20-05-2017') should return '20/05/2017'.


var user_date = "20-05-2017";
console.log("OG String :", user_date)
function replaceChar(str) {
    // let change = str.replace(/-/g, "/");//other way is use replaceAll()
    // console.log("Replaced String :", change)
    let str2 = "";
    for (let i = 0; i < str.length; i++) {
        // console.log(str[i])
        if (str[i] === "-") {
            str2 += "/";
        } else {
            str2 += str[i];
        }
    }
    console.log("replace : ", str2);
}
replaceChar(user_date);