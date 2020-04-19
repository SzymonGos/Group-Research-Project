if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
} else {
    ready()
}

function ready() {
    var removeCartButtons = document.getElementsByClassName('btn-danger')
    for (var i = 0; i < removeCartButtons.length; i++) {
        var button = removeCartButtons[i];
        button.addEventListener('click', removeCartItem)
    }


    var quantityInputs = document.getElementsByClassName('cart-quantity-input')
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i];
        input.addEventListener('change', quantityChange)
    }

}




function removeCartItem(event) {
    var buttonClicked = event.target
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
}


function quantityChange(event) {

}


function updateCartTotal() {
    var cartItemContainer = document.getElementsByClassName('cart-items')[0]
    var cartRows = cartItemContainer.getElementsByClassName('cart-row')
    var total = 0
    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i]
        var priceElement = cartRow.getElementsByClassName('cart-price')[0]
        var quantityElememt = cartRow.getElementsByClassName('cart-quantity-input')[0]


        var price = parseFloat(priceElement.innerText.replace('£', ''))
        var quantity = quantityElememt.value
        total = total + (price * quantity)
    }
    document.getElementsByClassName('cart-total-price')[0].innerText = '£' + total
}


// Play with it later

// let carts = document.querySelectorAll('.add-cart');

// for (let i = 0; i < carts.length; i++) {
//     carts[i].addEventListener('click', () => {
//         cartNumbers();
//     })
// }


// function onLoadCartNumbers() {
//     let productNumbers = localStorage.getItem('cartNumbers');

//     if (productNumbers) {
//         document.querySelector('.quantity').textContent = productNumbers;
//     }
// }


// // updaate local storage with the number of added products
// function cartNumbers() {

//     //number of products on local storage
//     let productNumbers = localStorage.getItem('cartNumbers');

//     //convert string into a number
//     productNumbers = parseInt(productNumbers);

//     if (productNumbers) {
//         localStorage.setItem('cartNumbers', productNumbers + 1);
//         document.querySelector('.quantity').textContent = productNumbers + 1;
//     } else {
//         //if there's no item in localstorage
//         localStorage.setItem('cartNumbers', 1);
//         document.querySelector('.quantity').textContent = 1;

//     }

// }

// //call the function to display an amount if the website is refreshed
// onLoadCartNumbers();