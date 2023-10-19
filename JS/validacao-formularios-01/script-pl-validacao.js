// ---------- VALIDAÇÃO USERNAME ---------- //
let usernameInput = document.getElementById("username");
let usernameLabel = document.querySelector('label[for="username"]');
let usernameHelper = document.getElementById("username-helper");

// Mostrar popup de campo obrigatório
usernameInput.addEventListener("focus",function(){
    usernameLabel.classList.add('required-popup')
})

// Ocultar popup de campo obrigatório
usernameInput.addEventListener("blur",function(){
    usernameLabel.classList.remove('required-popup')
})

// Validar valor do input
usernameInput.addEventListener("change", (evento) => {
    let valor = evento.target.value
    console.log(valor)

    if(valor.length < 3){
        usernameInput.classList.remove('correct');
        usernameInput.classList.add('error');
        usernameHelper.innerText = 'Seu username deve ter 3 ou mais caracteres'
        usernameHelper.classList.add('visible');
    } else {
        usernameInput.classList.remove('error');
        usernameHelper.classList.remove('visible');
        usernameInput.classList.add('correct');
    }
})

// ---------- VALIDAÇÃO EMAIL ---------- //
let emailInput = document.getElementById("email");
let emailLabel = document.querySelector('label[for="email"]');
let emailHelper = document.getElementById("email-helper");

// Mostrar popup de campo obrigatório
emailInput.addEventListener("focus",function(){
    emailLabel.classList.add('required-popup')
})

// Ocultar popup de campo obrigatório
emailInput.addEventListener("blur",function(){
    emailLabel.classList.remove('required-popup')
})

// Validar valor do input
emailInput.addEventListener("change", () =>{
    let re = /\S+@\S+\.\S+/;
    return re.test(email);
})