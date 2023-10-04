var boxD = document.getElementById("box");

function addColor() {
    boxD.style.backgroundColor = "green";
    boxD.style.boxShadow = "5px 5px 12px white";
    boxD.style.borderRadius = "10px"
    boxD.style.width = "700px"
}
function removeColor() {
    boxD.style.backgroundColor = "";
    boxD.style.boxShadow = "";
    boxD.style.borderRadius = ""
    boxD.style.width = ""
    
}