var fname = document.getElementById("firstName");
var msg_1 = document.getElementById("msg1");


// name -------------------------------------
function isNameBlank() {
    if (fname.value === "") {
        msg_1.innerHTML = "Please Enter Your Name..!!";
    } else {
        msg_1.innerHTML = "";
    }
}

// email------------------------------
var email = document.getElementById("emailID");
var msg_2 = document.getElementById("msg2");

function isEmailBlank() {
    if (email.value === "") {
        msg_2.innerHTML = "Please Enter Your email..!!";
    } else {
        msg_2.innerHTML = "";
    }
}

// mobile --------------------------
var mobile_No = document.getElementById("mobileNo");
var msg_3 = document.getElementById("msg3");

function isMobileBlank() {
    if (mobile_No.value === "") {
        msg_3.innerHTML = "Please Enter Your Mobile No..!!!"
    } else {
        msg_3.innerHTML = "";
    }
}

// Gender --------------------------

var radioBtns = document.getElementsByName("gender");
var msg_4 = document.getElementById("msg4");

function isGenderBlank() {
    if (radioBtns[0].checked === false && radioBtns[1].checked === false) {
        msg_4.innerHTML = "Please Select Gender..!!";
    } else {
        msg_4.innerHTML = "";
    }
}

// date ---------------------------------------------

var Date_picker = document.getElementById("dateID");
var msg_5 = document.getElementById("msg5");

function isDate_Blank() {
    if (Date_picker.value === "") {
        msg_5.innerHTML = "Please Select Date..!!"
    } else {
        msg_5.innerHTML = "";
    }
}

// Address---------------------------------------

var textArea = document.getElementById("textAreaID");
var msg_6 = document.querySelector(".msg6");

function isAddressBlank() {
    if (textArea.value === "") {
        msg_6.innerHTML = "Please Enter Your Address..!!"
    } else {
        msg_6.innerHTML = "";
    }
}

// City Blank

var selectDropdown = document.getElementById("selectID");
var msg_7 = document.querySelector(".msg7");

function isCityBlank() {
    if (selectDropdown.value === "default") {
        msg_7.innerHTML = "Please Select Your City"
    }
    else {
        msg_7.innerHTML = "";
    }
}


// --------------------------------------------------------------------------
// --------------------------------------------------------------------------
// Regular Exprestion

// Name ---------------------------------------------------------------
var warning_msg1 = document.getElementById("warning-msg1");

function nameRegualrEx_Validation() {
    var reg_ex = /^[a-zA-Z]+$/;
    let first_name = fname.value;

    if (reg_ex.test(first_name)) {
        warning_msg1.innerHTML = ""
    } else {
        warning_msg1.innerHTML = "Please Enter only Alphabets..!!";
    }
}

// --------------------------------------------------------------------------
// email Regualar Expresson

var warning_msg2 = document.getElementById("warning-msg2");

function emailRegularEx_Validation() {
    var reg_ex_email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var email_ID = email.value;
    if (reg_ex_email.test(email_ID)) {
        warning_msg2.innerHTML = "";
    } else {
        warning_msg2.innerHTML = "Please Enter Valid Email Address..!!";
    }
}

// ----------------------------------------------------------------------------

// mobile Regualar Expression
var warning_msg3 = document.getElementById("warning-msg3");

function mobileRegularEx_Validation() {
    var mo_no = mobile_No.value;
    var mo_reg_ex = /^[0-9]*$/;
    if (mo_reg_ex.test(mo_no)) {
        warning_msg3.innerHTML = "";
    } else {
        warning_msg3.innerHTML = "Please Enter 0 to 9 Numbered Only..!!";
    }
}

// ----------------------------------------------------------------------------
