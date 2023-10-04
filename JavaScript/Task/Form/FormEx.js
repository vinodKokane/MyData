var item_list = document.getElementById("item-list");


// select all input Tag
var inputType = document.querySelectorAll('input');

// ------------------------Disabled Controller-----------------------------

// Disabled and Enabled Controlled Function
var elements = document.querySelectorAll(".Enabled-Input");
var select = document.getElementById("select");

function disabled_Controller() {
    elements.forEach((input) => {
        if (select.value === "disabled") {
            input.setAttribute("disabled", "");
            input.style.pointerEvent = "none";
            input.style.cursor = "not-allowed";
        } else {
            input.removeAttribute("disabled");
            input.style.cursor = "pointer";
        }
    })
}

//--------------------------------------------------------------------------




// Get all Checkbox 
var check_Box_buttons = document.getElementsByName("checkBox");
var show_msg = document.getElementById("show-msg");
//-----------------------Checkbox_Manupulation--------------------------------------------------

// display the addition in show_msg input box

function checkbox_Manupulation() {

    let sum = 0;
    //itrate on checkbox 
    check_Box_buttons.forEach((checkbox) => {

        if (checkbox.checked) {

            sum += Number(checkbox.value);
        }
    })
    show_msg.value = "Total Checkbox value:" + sum;

    if (sum === 0) {

        show_msg.value = "";

    }
}



//---------------------display_image_dropdown----------------------------------------------------

var img_koala = document.getElementById("img-koala");
var inner_Box = document.querySelector(".color_DropBox");

function show_Image_Dropdown() {
    img_koala.style.display = "block";
    inner_Box.style.display = "none";
    form_Bg_ColorImage.style.background = "url(./background.png)";
}

function show_Color_Dropdown() {
    img_koala.style.display = "none";
    inner_Box.style.display = "block";
    form_Bg_ColorImage.style.background = "blue";
}

// ---------------------------------------------------------------------------

// change background color ----------------------------------------------------

var form_Bg_ColorImage = document.getElementById("form-data");
function change_Bg_color(color) {
    form_Bg_ColorImage.style.background = color.dataset.value;
}
// ----------------------------------------------------------------------------

// change background wallpaper ------------------------------------------------
var Image_list = document.getElementById("image-list");

function change_Bg_image(img) {

    if (img.value === "Koala") {
        form_Bg_ColorImage.style.background = "url(./background.png)";
    }
    else if (img.value === "lightHouse") {
        form_Bg_ColorImage.style.background = "url(./lightHouse.webp)";
    }
    else if (img.value === "penguin") {
        form_Bg_ColorImage.style.background = "url(./penguin.jpg)";
    }
    else {
        form_Bg_ColorImage.style.background = "url(./tulips.webp)";
    }
    form_Bg_ColorImage.style.backgroundPosition = "center";
    form_Bg_ColorImage.style.backgroundSize = "cover";
    form_Bg_ColorImage.style.backgroundRepeat = "none";
}


// Add Data In Text Box----------------------------------------------------


var text_area = document.getElementById("text-area");
var add_btn = document.getElementById("addBtn");
var input_data = document.getElementById("input-data");


add_btn.addEventListener("click", add_Text);

function add_Text() {
    text_area.value += input_data.value + "\n";
}
// ---------------------------------------------------------------------------
