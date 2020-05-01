// open modal button
const openModalBuuttons = document.querySelectorAll('[data-modal-target]')
    // close modal button
const closeModalBuuttons = document.querySelectorAll('[data-close-button]')
    // overlay element to show and hide as needed 
const overlay = document.getElementById('overlay')



// activate modal when "More Info" button is clicked
openModalBuuttons.forEach(button => {
    button.addEventListener('click', () => {
        //dataset allows to access all data- attributes
        const modal = document.querySelector(button.dataset.modalTarget)
        openModal(modal)
    })
})

// close modal by clicking close icon
closeModalBuuttons.forEach(button => {
    button.addEventListener('click', () => {
        const modal = button.closest('.modal')
        closeModal(modal)
    })
})

// close the modal when clicked anywhere outside the modal
overlay.addEventListener('click', () => {
    const modals = document.querySelectorAll('.modal.active')
    modals.forEach(modal => {
        closeModal(modal)
    })
})

// check if modal is equal to null and if it's not, activate modal and overlay by adding class active 
function openModal(modal) {
    if (modal == null) return
    modal.classList.add('active')
    overlay.classList.add('active')
}

// remove ".active" class 
function closeModal(modal) {
    if (modal == null) return
    modal.classList.remove('active')
    overlay.classList.remove('active')
}