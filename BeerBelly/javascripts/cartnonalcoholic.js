let carts = document.querySelectorAll('.add-cart');

let products = [


    //alcohol drinks end

    // non-alcohol drinks start

    {
        name: 'Nanny State (0.5%)',
        tag: 'Brewdog___Nanny_State_Can',
        price: 1.50,
        inCart: 0
    },

    {
        name: 'Blonde (0.0%)',
        tag: 'Leffe___Blonde',
        price: 2.00,
        inCart: 0
    },

    {
        name: 'Wit Blanche (0.0%)',
        tag: 'Hoegaarden___Wit_Blanche_Can',
        price: 1.75,
        inCart: 0
    },

    {
        name: 'Raspberry Blitz (0.5%)',
        tag: 'Brewdog___Raspberry_Blitz',
        price: 2.00,
        inCart: 0
    },

    {
        name: 'Blue Alcohol-Free Beer (0.05%)',
        tag: 'Beck_s___Blue_Alcohol_Free_Beer',
        price: 2.00,
        inCart: 0
    }
    //non-alcohol drinks end

];

for (let i = 0; i < carts.length; i++) {
    carts[i].addEventListener('click', () => {
        cartNumbers(products[i]);
        totalCost(products[i]);
    })
}

function onLoadCartNumbers() {
    let productNumbers = localStorage.getItem('cartNumbers');
    if (productNumbers) {
        document.querySelector('.quantity').textContent = productNumbers;
    }
}

function onLoadCartNumbers() {
    let productNumbers = localStorage.getItem('cartNumbers');
    if (productNumbers) {
        document.querySelector('.quantity').textContent = productNumbers;
    }
}

function cartNumbers(product) {
    let productNumbers = localStorage.getItem('cartNumbers');
    productNumbers = parseInt(productNumbers);

    if (productNumbers) {
        localStorage.setItem('cartNumbers', productNumbers + 1);
        document.querySelector('.quantity').textContent = productNumbers + 1;
    } else {
        localStorage.setItem('cartNumbers', 1);
        document.querySelector('.quantity').textContent = 1;
    }

    setItems(product);
}



function setItems(product) {
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);

    //check if product exists in the cart and add 1 
    if (cartItems != null) {

        if (cartItems[product.tag] == undefined) {
            cartItems = {
                ...cartItems,
                [product.tag]: product
            }
        }
        cartItems[product.tag].inCart += 1;
    } else {
        product.inCart = 1;
        cartItems = {
            [product.tag]: product
        }
    }
    localStorage.setItem("productsInCart", JSON.stringify(cartItems));
}


function totalCost(product, action) {
    let cartCost = localStorage.getItem('totalCost');

    if (action) {
        cart = parseInt(cart);

        localStorage.setItem("totalCost", cart - product.price);
    } else if (cartCost != null) {

        cartCost = parseFloat(cartCost);
        localStorage.setItem("totalCost", cartCost + product.price);
    } else {
        localStorage.setItem('totalCost', product.price);
    }

}

function displayCart() {
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);
    let productContainer = document.querySelector(".cart-items");
    let cartCost = localStorage.getItem('totalCost');

    if (cartItems && productContainer) {
        productContainer.innerHTML = '';
        Object.values(cartItems).map((item, index) => {
            productContainer.innerHTML +=


                `
            <div class="cart-row">
                <div class="cart-item cart-column">
                    <img src="img/products/${item.tag}.png"/> 
                    <span class="cart-item-title">${item.name}</span>
                </div>
                <span class="cart-price cart-column">£${item.price.toFixed(2)}</span>

                <!-- Quantity -->
                <div class="cart-quantity cart-column">
                  
                    <span class="cart-quantity-input">${item.inCart}</span>
                    
                </div>
            </div>
            `
        });

        productContainer.innerHTML += `
        <div class="cart-total">
                    <strong class="cart-total-title">Total:</strong>
                    <span class="cart-total-price">£${cartCost}</span>
                    <button id="btn-hide" class="btn-danger" type="button">Empty Case</button>
                </div>`

        deleteButtons();
        onLoadCartNumbers();
    }
}



function deleteButtons() {
    let deleteButtons = document.querySelectorAll('.cart-total .btn-danger');
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);

    for (let i = 0; i < deleteButtons.length; i++) {
        deleteButtons[i].addEventListener('click', () => {
            localStorage.removeItem('cartNumbers');
            localStorage.removeItem('totalCost');
            localStorage.removeItem('productsInCart')
            location.reload();
            displayCart();
            onLoadCartNumbers();
        })
    }
}

//call the function to display a number of products in cart if the website is refreshed
onLoadCartNumbers();
displayCart();