const form = document.getElementById('form')
const firstName = document.getElementById('firstName')
const lastName = document.getElementById('lastName')
const email = document.getElementById('email')
const address1 = document.getElementById('address1')
const city = document.getElementById('city')
const postCode = document.getElementById('postCode')
const phone = document.getElementById('phone')
const password1 = document.getElementById('password1')
const password2 = document.getElementById('password2')




form.addEventListener('submit', (e) => {
    e.preventDefault();

    checkInputs();

});



function checkInputs() {

    //gets the values from the inputs
    const firstNameValue = firstName.value.trim();
    const lastNameValue = lastName.value.trim();
    const emailValue = email.value.trim();
    const address1Value = address1.value.trim();
    const cityValue = city.value.trim();
    const postCodeValue = postCode.value.trim();
    const phoneValue = phone.value.trim();
    const password1Value = password1.value.trim();
    const password2Value = password2.value.trim();

    if (firstNameValue == '') {
        //show error
        //add error class
        setErrorFor(firstName, 'First Name cannot be blank')
    } else {
        //add success class
        setSuccessFor(firstName);
    }

    //last name
    if (lastNameValue == '') {
        setErrorFor(lastName, 'Last Name cannot be blank')
    } else {
        setSuccessFor(lastName);
    }

    // email
    if (emailValue == '') {
        setErrorFor(email, 'Email cannot be blank')
    } else if (!isEmail(emailValue)) {
        setErrorFor(email, 'Email is not valid')
    } else {
        setSuccessFor(email);
    }

    //Address 1
    if (address1Value == '') {
        setErrorFor(address1, 'Address cannot be blank')
    } else {
        setSuccessFor(address1);
    }

    //city
    if (cityValue == '') {
        setErrorFor(city, 'City cannot be blank')
    } else {
        setSuccessFor(city);
    }

    // post code
    if (postCodeValue == '') {
        setErrorFor(postCode, 'Post Code cannot be blank')
    } else {
        setSuccessFor(postCode);
    }

    //mobile phone number
    if (phoneValue == '') {
        setErrorFor(phone, 'Mobile Number cannot be blank')
    } else if (!isPhone(phoneValue)) {
        setErrorFor(phone, 'Phone number is not valid')
    } else {
        setSuccessFor(phone);
    }

    //password 1
    if (password1Value == '') {
        setErrorFor(password1, 'Password cannot be blank')
    } else if (password1Value.length <= 6) {
        setErrorFor(password1, 'Password must be longer than 6 characters')
    } else {
        setSuccessFor(password1);
    }

    //confirm password
    if (password2Value == '') {
        setErrorFor(password2, ' Password cannot be blank')
    } else if (password1Value !== password2Value) {
        setErrorFor(password2, 'Passwords does not match')
    } else {
        setSuccessFor(password2);
    }


    //show a success message
}



function setErrorFor(input, message) {
    const formControl = input.parentElement; // .form-control
    const small = formControl.querySelector('small');

    //add error message inside small
    small.innerText = message;

    //add error class
    formControl.className = 'form-control error';

}

function setSuccessFor(input, message) {
    const formControl = input.parentElement;

    //add error class
    formControl.className = 'form-control success';
}

function isEmail(email) {
    return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}


function isPhone(phone) {
    return /^\d{11}$/.test(phone);

}