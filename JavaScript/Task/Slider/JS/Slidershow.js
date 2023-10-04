
var data = [{
    image: "Images/coffee6.jpg",
    msg: "coffee-6...",
    title: "coffee"
}, {
    image: "Images/coffee-3.jpg",
    msg: "coffee-3...",
    title: "coffee-3"
}, {
    image: "Images/coffee-4.jpg",
    msg: "coffee-4...",
    title: "coffee-4"
}, {
    image: "Images/1320593.jpg",
    msg: "coffee-5...",
    title: "coffee-5"
}, {
    image: "Images/istockphoto-1303583671-612x612.jpg",
    msg: "coffee-6...",
    title: "coffee-6"
}]


// catch the Id Of Sliders
var sliders = document.querySelector(".sliders");
// ---------------------------------------------------------
var slide_Image = document.getElementById("image1");

// onclick change the Image
function change_Slide_Image(object) {
    slide_Image.src = data[object.value].image;
}
// ---------------------------------------------------------

// change Image while Click on Prev and Next Button
var radio_Btn = document.querySelectorAll(".radioBtn");
var action_btn = document.querySelectorAll(".action-btn");
var count = 0;

function prevNaxtImage(element) {
    if (element.value === "next") {
        if (count > data.length - 1) {
            count = 0;
        } else {
            count++;
            slide_Image.src = data[count].image;
        }
    } else {
        if (count < 0) {
            count = data.length - 1;
        } else {
            slide_Image.src = data[count--].image;
        }
    }
}


// Play the Slide

var play_Btn = document.querySelector(".playBtn");
var pause_Btn = document.querySelector(".pauseBtn");


// playSlideshow funtion
let slideIndex = 0;
let slideTimeOut;

function playSlideshow() {
    slideIndex += 1;
    if (slideIndex > data.length - 1) {
        slideIndex = 0;
    } else {
        slide_Image.src = data[slideIndex].image;
        // console.log(data[slideIndex].image);
    }
    slideTimeOut = setTimeout(playSlideshow, 1000);
}

// pause Slideshow
function pauseSlideshow() {
    // console.log("stop")
    clearTimeout(slideTimeOut);
    slideIndex = 0;
}




