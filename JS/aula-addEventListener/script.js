let numero = document.querySelector('h1')
let botao = document.querySelector('button')
let contagem = 0

botao.addEventListener("click", ()=> { //arrow function ou "function()"
    contagem++;
    numero.innerText = contagem;
});