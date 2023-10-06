let h1Titulo = document.querySelector('#titulo');
let aLink = document.querySelector("a");
let listaNaoOrdenada = document.querySelector("ul");
let listaOrdenada = document.querySelector("#lista-ordenada");

h1Titulo.innerText = "Modelo H1";
aLink.innerText = "Proz Educação";
listaNaoOrdenada.innerHTML = `
<li>Item 01</li>
<li>Item 02</li>
<li>Item 03</li>`;
listaOrdenada.innerHTML = ` 
<li><a href="https://prozeducacao.com.br/">Proz</a></li>
<li><a href="https://www.uol.com.br/">Uol</a></li>
<li><a href="https://aws.amazon.com/pt/">AWS</a></li>`;

console.log(h1Titulo.innerText);
console.log(aLink.innerText);
console.log(listaNaoOrdenada.innerHTML);
console.log(listaOrdenada.innerHTML);