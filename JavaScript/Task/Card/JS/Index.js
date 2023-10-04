const products = [
    {
        id: 1,
        Title: "Nike Shoes",
        image: "./Images/Nike_1.jpg",
        price: 200
    }, {
        id: 2,
        Title: "Nike Shoes",
        image: "./Images/Nike_2.jpg",
        price: 180
    }, {
        id: 3,
        Title: "Nike Shoes",
        image: "./Images/Nike_3.jpg",
        price: 190,
    }, {
        id: 4,
        Title: "Nike Shoes",
        image: "./Images/Nike_4.jpg",
        price: 210
    }, {
        id: 5,
        Title: "Nike Shoes",
        image: "./Images/Nike_5.jpg",
        price: 220
    }, {
        id: 6,
        Title: "Nike Shoes",
        image: "./Images/Nike_6.jpg",
        price: 200
    }
]

var product_Data = document.getElementById("productData");
var inc = 1;

// show product first
product_Data.innerHTML = products.map((e, i) => {
    return (
        `<div class="card m-1" style="width: 18rem;" key=${i}>
          <img src=${e.image} class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">${e.Title}</h5>
                <p class="card-text">${e.price}</p>
                <p class="card-text">
                    <input type='number' id='txtQyt-${i}' min='1' class='form-control' value='1'/>
                </p>
                <a href="#" class="btn btn-warning btn-large text-white" onclick="addToCart(${i})">Add To Cart</a>
             </div>
        </div>`
    )
}).join('');


// --------------------------------------------------------------

// empty cart list array
var cartList = [];
var cart_count;

// add to cart -----------------------------------------------------

function addToCart(id) {

    let filterData = products.filter((item, index) => {
        return index === id;
    })

    //get the Value of Qunatity at each index
    cart_count = document.getElementById('txtQyt-' + id).value;

    // set the quantity in filterData
    filterData[0].quantity = cart_count;


    // copy that filtered data into cartlist
    cartList = ([...cartList, ...filterData]);

    // remove duplcate element
    cartList = ([...new Set(cartList)]);

    // call the display method to display product
    displayCart();
}

// --------------------------------------------------------------

var card_product = document.getElementById("card-product");
var count = document.getElementById("count");
var total_amount = document.querySelector(".amount");


// display cart--------------------------------------------------

function displayCart() {
    if (cartList.length > 0) {
        let total = 0;
        count.innerHTML = cartList.length;
        card_product.innerHTML = cartList.map((item, index) => {
            total = total + (item.price * item.quantity);
            total_amount.innerHTML = total;
            return (
                `<div class='col-sm-12 border-bottom'>
                    <div class='row p-2'>
                        <div class='col-sm-1'>
                        ${index + 1}
                        </div>
                        <div class='col-sm-3'>
                        ${item.Title}
                        </div>
                        <div class='col-sm-2'>
                        <img src=${item.image} class='img-fluid'/>
                        </div>
                        <div class='col-sm-1'>
                        ${item.price}
                        </div>
                        <div class='col-sm-1'>
                           <p id='quantity'>${item.quantity}</p>
                        </div>
                        <div class="col-sm-2"><span>$</span>    
                        ${item.price * item.quantity}
                        </div>
                        <div class='col-sm-2 fs-2'>
                        <i class="fa-sharp fa-solid fa-trash text-danger" onclick="deleteItem(${index})"></i>
                        </div>
                    </div>
                </div>`
            )
        }).join('');

    }
    else {
        count.innerHTML = "0";
        card_product.innerHTML = "<div class='col-sm-12 text-center'>Your Cart Is Empty!!!</div>";
        total_amount.innerHTML = "0";
    }
}

// --------------------------------------------------------------

// delete CartList Item

function deleteItem(i) {
    cartList.splice(i, 1);
    displayCart();
}
// --------------------------------------------------------------
