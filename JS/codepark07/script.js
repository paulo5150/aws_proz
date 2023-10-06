let tituloSimples = document.createElement("h1");
tituloSimples.innerText = "Compras Online"
tituloSimples.id = "titulo"

let paginaCorpo = document.querySelector("body");
paginaCorpo.appendChild(tituloSimples);

const produtoSelecionado = document.createElement("section");
produtoSelecionado.innerHTML = `
<h2>Chocolate ao leite Lacta</h2>
<div>
    <img src="./src/img/1694055443_1GG.webp" alt="Imagem do chocolate" width="300px" height="300px">
    <p>
        Impossível não se apaixonar pelo delicioso e inconfundível sabor
        da <strong>Barra de Chocolate ao Leite da Lacta</strong>. Ainda 
        mais no tamanho família! Mais que uma saborosa barra de chocolate,
        simplesmente a maior gostosura, em formato e tamanho, para você
        dividir se quiser, mas se não quiser dividir, delicie-se!
    </p>
    <span><strong>R$10,99</strong></span>
`
const produto = document.querySelector("body");
produto.appendChild(produtoSelecionado);


