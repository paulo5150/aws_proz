//Paulo Lima, Willian Bento e Marcello Cavalcanti

let quantidadeSubtotal = document.getElementById("quantidade-subtotal");
let valorSubtotal = document.getElementById("valor-subtotal");

let subtotalInfo = {
  quantidade: 1,
  valor: 11.66,
  total: 11.66,
};

function atualizarSubtotal(){
  if(subtotalInfo.quantidade <= 1){
    quantidadeSubtotal.innerText = subtotalInfo.quantidade + " item";
    valorSubtotal.innerText = subtotalInfo.total.toFixed(2);
  } else {
    quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
    valorSubtotal.innerText = subtotalInfo.total.toFixed(2);
  } 
}

atualizarSubtotal();

let btnAdicionarProduto01 = document.querySelector('#btn-adicionar-produto-01');
let btnSubtrairProduto01 = document.querySelector('#btn-subtrair-produto-01');
let quantidadeProduto01 = document.querySelector('#quantidade-produto-01');


function adicionarUm() {
  quantidadeProduto01.value = Number(quantidadeProduto01.value) + 1;
  subtotalInfo.quantidade = subtotalInfo.quantidade + 1;
  subtotalInfo.total = subtotalInfo.total + subtotalInfo.valor;
  valorSubtotal.innerText = toString(subtotalInfo.total);
  console.log(subtotalInfo.total)
  atualizarSubtotal();
}

function subtrairUm(){
  if(quantidadeProduto01.value > 0){
    quantidadeProduto01.value = Number(quantidadeProduto01.value) - 1;
    subtotalInfo.quantidade = subtotalInfo.quantidade - 1;
    subtotalInfo.total = subtotalInfo.total - subtotalInfo.valor;
    valorSubtotal.innerText = toString(subtotalInfo.total);
    console.log(subtotalInfo.total)
  }
  atualizarSubtotal()
}

btnAdicionarProduto01.addEventListener('click', adicionarUm);
btnSubtrairProduto01.addEventListener('click', subtrairUm);