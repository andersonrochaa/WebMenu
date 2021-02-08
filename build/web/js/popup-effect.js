var loginBtn, popupForm, closeBtn, popupContainer;

loginBtn = document.querySelector('.login-btn');
popupForm = document.querySelector('.popup-form');
closeBtn = popupForm.querySelector('.close-btn');
popupContainer = document.querySelector('.popup-container');

// event handler to show hidden form
function showEdit(){
    popupForm.classList.remove('hide');
    popupContainer.classList.remove('hide');
    
}
// event handler to hide form
closeBtn.addEventListener('click', () => {
    // add hide class
    popupForm.classList.add('hide');
    popupContainer.classList.add('hide');
});

// handles event when clicked outside the form
popupContainer.addEventListener('click', () => {
    // add hide class to both
    popupForm.classList.add('hide');
    popupContainer.classList.add('hide');
});