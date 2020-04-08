if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
}

let carts = document.querySelectorAll('.add-cart');

for (let i = 0; i < carts.length; i++) {
    carts[i].addEventListener('click', () => {
        cartNumbers();
    })
}


function onLoadCartNumbers() {
    let productNumbers = localStorage.getItem('cartNumbers');

    if (productNumbers) {
        document.querySelector('.quantity').textContent = productNumbers;
    }
}


// updaate local storage with the number of added products
function cartNumbers() {

    //number of products on local storage
    let productNumbers = localStorage.getItem('cartNumbers');

    //convert string into a number
    productNumbers = parseInt(productNumbers);

    if (productNumbers) {
        localStorage.setItem('cartNumbers', productNumbers + 1);
        document.querySelector('.quantity').textContent = productNumbers + 1;
    } else {
        //if there's no item in localstorage
        localStorage.setItem('cartNumbers', 1);
        document.querySelector('.quantity').textContent = 1;

    }

}

//call the function to display an amount if the website is refreshed
onLoadCartNumbers();