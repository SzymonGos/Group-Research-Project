var slideNumber = 0;
productSlides(slideNumber);

// Next/previous controls
function plusSlides(n) {
    productSlides(slideNumber += n);
}


function productSlides(n) {
    var i;
    var slides = document.getElementsByClassName("product-slide");
    if (n > slides.length) { slideNumber = 1 }
    if (n < 1) { slideNumber = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[slideNumber - 1].style.display = "block";

}