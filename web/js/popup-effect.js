var loginBtn, popupForm, closeBtn, popupContainer, inp_nome, inp_descricao, inp_preco;
var iditem;

loginBtn = document.querySelector('.login-btn');
popupForm = document.querySelector('.popup-form');
closeBtn = popupForm.querySelector('.close-btn');
popupContainer = document.querySelector('.popup-container');
inp_nome = document.querySelector('#nome_update_item');

                        //document.forms['form_update_item'].action = txt;
                        //document.forms['form_update_item'].submit();
// event handler to show hidden form
function showEdit(iditem_){
    iditem = iditem_;
    popupForm.classList.remove('hide');
    popupContainer.classList.remove('hide');
    inp_nome.value =  iditem_;// document.getElementsByName().value;    
}
function UpdateItem(){
    document.forms['form_update_item'].action = "updateitem?key="+iditem;
    document.forms['form_update_item'].submit();    
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