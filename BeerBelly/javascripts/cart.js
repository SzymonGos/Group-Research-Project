let carts = document.querySelectorAll('.add-cart');

let products = [

    // alcohol drinks start

    {
        name: 'Punk IPA',
        tag: 'BrewDog_Punk_IPA_Can',
        price: 2.50,
        inCart: 0
    },

    {
        name: 'Neck Oil Session IPA',
        tag: 'Beavertown___Neck_Oil_Session_IPA',
        price: 3.00,
        inCart: 0
    },

    {
        name: 'Soundwave  IPA',
        tag: 'Siren___Soundwave_IPA_Bottle',
        price: 3.50,
        inCart: 0
    },

    {
        name: 'Hope Shine New England IPA',
        tag: 'Naparbier___Hop_Shine_New_England_IPA_Bottle',
        price: 5.50,
        inCart: 0
    },

    {
        name: 'Saucery Session IPA',
        tag: 'Magic_Rock___Saucery_Session_IPA_Can',
        price: 3.50,
        inCart: 0
    },

    {
        name: 'Nastro Azzurro',
        tag: 'Peroni___Nastro_Azzurro_Bottle',
        price: 4.00,
        inCart: 0
    },

    {
        name: 'Heineken Lager',
        tag: 'Heineken_Lager_Bottle',
        price: 3.00,
        inCart: 0
    },

    {
        name: '1664 Lager',
        tag: 'Kronenbourg___1664_Lager_Bottle',
        price: 4.50,
        inCart: 0
    },

    {
        name: 'Brooklyn Lager',
        tag: 'Brooklyn_Lager_Bottle',
        price: 4.00,
        inCart: 0
    },

    {
        name: 'Sol. Lager Beer',
        tag: 'Sol__Lager_Beer_Bottle',
        price: 3.50,
        inCart: 0
    },

    {
        name: 'Milk Shake Stout',
        tag: 'Wiper_and_True___Milk_Shake_Stout_Can',
        price: 2.50,
        inCart: 0
    },

    {
        name: 'The Nightcrawler Milk Stout',
        tag: 'O_Brother___The_Nightcrawler_Milk_Stout_Can',
        price: 3.50,
        inCart: 0
    },

    {
        name: 'Step Up English Stout',
        tag: 'Cloudwater___Rock_Leopard___Step_Up_English_Stout',
        price: 4.00,
        inCart: 0
    },

    {
        name: 'Sins Forbidden Apple Stout',
        tag: 'Siren___Sins_Forbidden_Apple_Stout_Can',
        price: 3.00,
        inCart: 0
    },

    {
        name: 'Morticia Oak Aged Imperial Stout',
        tag: 'Barrier___Morticia_Oak_Aged_Imperial_Stout_Bottle',
        price: 9.00,
        inCart: 0
    },

    {
        name: 'Gamma Ray Pale Ale',
        tag: 'Beavertown___Gamma_Ray_Pale_Ale_Can',
        price: 3.00,
        inCart: 0
    },

    {
        name: 'Pale Fire Pale Ale',
        tag: 'Pressure_Drop___Pale_Fire_Pale_Ale_Can',
        price: 2.50,
        inCart: 0
    },

    {
        name: 'Guardsman Bitter',
        tag: 'Windsor___Eton___Guardsman_Bitter_Bottle',
        price: 2.50,
        inCart: 0
    },

    {
        name: 'Rebellion Red Ale',
        tag: 'Marlow_Brewery___Rebellion_Red_Ale_Bottle',
        price: 4.00,
        inCart: 0
    },

    {
        name: 'Inhaler Hoppy Pale Ale',
        tag: 'Magic_Rock___Inhaler_Hoppy_Pale_Ale_Can',
        price: 2.00,
        inCart: 0
    },

    {
        name: 'Original Czech Pilsner',
        tag: 'Budvar___Original_Czech_Pilsner_Bottle',
        price: 2.50,
        inCart: 0
    },

    {
        name: 'Dancing Bier Bavarian Pils',
        tag: 'Magic_Rock___Dancing_Bier_Bavarian_Pils_Can',
        price: 2.50,
        inCart: 0
    },

    {
        name: 'Crispy Days Pilsner',
        tag: 'Finback___Crispy_Days_Pilsner_Can',
        price: 8.00,
        inCart: 0
    },

    {
        name: 'Birdie Birdie Saison Yeast BA Pilsner',
        tag: 'The_Bruery___Birdie_Birdie_Saison_Yeast_BA_Pilsner_Can',
        price: 11.00,
        inCart: 0
    },

    {
        name: 'Studio Pilsner',
        tag: 'Signature_Brew___Studio_Pilsner_Can',
        price: 2.50,
        inCart: 0
    },

    //alcohol drinks end

];
// Loop through all products and listen to the click
for (let i = 0; i < carts.length; i++) {
    carts[i].addEventListener('click', () => {
        // product added to cartNumber
        cartNumbers(products[i]);
        // cost of product added to totalCost
        totalCost(products[i]);
    })
}

function onLoadCartNumbers() {
    let productNumbers = localStorage.getItem('cartNumbers');
    if (productNumbers) {
        document.querySelector('.quantity').textContent = productNumbers;
    }
}

function cartNumbers(product) {
    let productNumbers = localStorage.getItem('cartNumbers');
    // convert cartNumber to integer
    productNumbers = parseInt(productNumbers);

    // check if there is something in local storage already
    if (productNumbers) {
        localStorage.setItem('cartNumbers', productNumbers + 1);
        // add +1 to quantity of the cart icon in navigation bar 
        document.querySelector('.quantity').textContent = productNumbers + 1;
        // if there's none item in local storage, cartNumbers to 1 
    } else {
        localStorage.setItem('cartNumbers', 1);
        //set 1 to quantity of the cart
        document.querySelector('.quantity').textContent = 1;
    }
    setItems(product);
}


function setItems(product) {
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);
    //check if product exists in the cart
    if (cartItems != null) {
        // if a cart item is different than the first added item
        if (cartItems[product.tag] == undefined) {
            //take all items previously added
            cartItems = {
                ...cartItems,
                [product.tag]: product
            }
        }
        // if item exist in the cart - add 1
        cartItems[product.tag].inCart += 1;
        // if item doesn't exist in the cart - set to 1
    } else {
        product.inCart = 1;
        cartItems = {
            [product.tag]: product
        }
    }
    localStorage.setItem("productsInCart", JSON.stringify(cartItems));
}


function totalCost(product) {
    let cartCost = localStorage.getItem('totalCost');
    // if an item exists in the cart, add the price of the item to existing total
    if (cartCost != null) {
        cartCost = parseFloat(cartCost);
        localStorage.setItem("totalCost", cartCost + product.price);
        // first time item added to the cart
    } else {
        localStorage.setItem('totalCost', product.price);
    }
}

function displayCart() {
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);
    let productContainer = document.querySelector(".cart-items");
    let cartCost = localStorage.getItem('totalCost');

    // check if items exists already in local storage
    if (cartItems && productContainer) {

        productContainer.innerHTML = '';
        Object.values(cartItems).map((item) => {
            productContainer.innerHTML += `  
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
            </div>     `
        });
        productContainer.innerHTML += `
        <div class="cart-total">
                    <strong class="cart-total-title">Total:</strong>
                    <span class="cart-total-price">£${cartCost}</span>
                    <button id="btn-hide" class="btn-danger" type="button">Empty Case</button>
                </div>`;

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


function checkOut() {
    var page = document.getElementById("payment-page");
    var button = document.getElementById('btn-hide');
    if (page.style.display = "none") {
        page.style.display = "block";
        button.style.display = "none";
    }
}

function placeOrder() {

    localStorage.removeItem('cartNumbers');
    localStorage.removeItem('totalCost');
    localStorage.removeItem('productsInCart')

    alert("Thank you for shooping with Beer Belly!")
    displayCart();
    onLoadCartNumbers();
    location.reload();

}


//call the function to display a number of products in cart if the website is refreshed
onLoadCartNumbers();
displayCart();