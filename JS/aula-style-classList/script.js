//Paulo Lima, Beatriz, Fábio Navarro, Laila Taha

const login = document.querySelector('h2')
login.style.color = 'red'
login.style.fontWeight = 'bold'

const botao = document.querySelector('button')
botao.style.backgroundColor = 'blue'
botao.style.color = '#ffffff'
botao.style.borderRadius = '6px'
botao.style.borderColor = '#ffffff'
botao.style.fontSize = '0.9rem'

const loginUsuario = document.querySelector('#login-usuario');

loginUsuario.classList.add('correct');

//const errorMessage = document.querySelector('.error-text');

//errorMessage.classList.add('visible')

const loginSenha = document.querySelector('#login-senha');

loginSenha.classList.add('error');
console.log(loginSenha)

const senhaUsuario = document.querySelectorAll('.error-text')


senhaUsuario[1].classList.add('visible')


