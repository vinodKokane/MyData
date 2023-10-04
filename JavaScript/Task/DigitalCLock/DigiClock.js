
var display = document.querySelector(".main");

var hr = document.querySelector(".hr");
var min = document.querySelector(".min");
var sec = document.querySelector(".sec");


function DigitalClock() {
    var date = new Date();
    if (date.getHours() > 12) {
        hr.innerHTML = 24 - date.getHours();
    } else {
        hr.innerHTML = date.getHours();
    }
    min.innerHTML = date.getMinutes();
    sec.innerHTML = date.getSeconds();
}

setInterval(DigitalClock, 1000);