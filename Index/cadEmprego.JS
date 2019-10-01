/*JS responsável por realizar a validação dos campos de INPUTS do cadastro */

/*Flags para os campos */
var flag1= false //nome
var flag2= false //cpf
var flag3= false //endereco
var flag4= false //email
var flag5= false //curriculo

/*==============================================================================Functions======================================= */
function verifica_button() {
    if (flag1 == false || flag2==false || flag3==false || flag4==false || flag5==false) {
        console.log('desabilitar botao')
        button_enviar.disabled = true
    }
    else {
        console.log('habilitar botao')
        button_enviar.disabled = false
    }
}

function verifica_nome() {
    let aux = document.getElementsByClassName('resposta-input')[0]
    if (nome.value == "") {
        nome.style.border = "2px solid red"
        aux.querySelector('span').textContent = "Campo Obrigatório"
        flag1 = false
    }
    else if (nome.value.length < 3) {
        nome.style.border = "2px solid red"
        aux.querySelector('span').textContent = "Digite um nome válido"
        flag1 = false
    }
    else {
        console.log('chegou aki')
        nome.style.border = "2px solid green"
        aux.querySelector('span').textContent = ""
        flag1 = true
    }
}

function verifica_cpf(){
    let aux = document.getElementsByClassName('resposta-input')[1]
    if(cpf.value == ""){
        cpf.style.border = "2px solid red"
        aux.textContent = "Campo Obrigatório"
        flag2 = false
    }
    else if(cpf.value.length != 14){
        cpf.style.border = "2px solid red"
        aux.textContent = "Digite um CPF válido"
        flag2 = false
    }
    else{
        console.log('chegou aki')
        cpf.style.border = "2px solid green"
        aux.textContent = ""
        flag2 = true
    }
}

function verifica_endereco(){
    let aux = document.getElementsByClassName('resposta-input')[2]
    if(endereco.value == ""){
        endereco.style.border = "2px solid red"
        aux.textContent = "Campo Obrigatório"
        flag3 = false
    }
    else if(endereco.value.length < 5){
        endereco.style.border = "2px solid red"
        aux.textContent = "Digite um nome válido"
        flag3 = false
    }
    else{
        console.log('chegou aki')
        endereco.style.border = "2px solid green"
        aux.textContent = ""
        flag3 = true
    }
}
function verifica_email() {
    console.log('aqui')
    if (email.value == "") {
        email.style.border = "2px solid red"
        document.getElementsByClassName('resposta-input')[3].textContent = "Campo Obrigatório"
        flag4 = false
    }
    else if (email.value.indexOf('@') == -1 || email.value.indexOf('.') == -1) {
        email.style.border = "2px solid red"
        document.getElementsByClassName('resposta-input')[3].textContent = "Digite um email válido"
        flag4 = false
    }
    else {
        console.log('chegou aki')
        email.style.border = "2px solid green"
        document.getElementsByClassName('resposta-input')[3].textContent = ""
        flag4 = true
    }

}

function verifica_curriculo(){
    let aux = document.getElementsByClassName('resposta-input')[4]
    if(curriculo.value == ""){
        curriculo.style.border = "2px solid red"
        aux.textContent = "Campo Obrigatório"
        flag5 = false
    }
    else{
        console.log('chegou aki')
        curriculo.style.border = "2px solid green"
        aux.textContent = ""
        flag5 = true
    }
}

/* =========================================================Variáveis===========================*/
var button_enviar = document.getElementsByName('Enviar')[0]
var button_salvar = document.getElementsByName('Salvar')[0]
var email = document.getElementsByName('Email')[0]
var nome = document.getElementsByName('Nome')[0]
var endereco = document.getElementsByName('Endereco')[0]
var cpf =  document.getElementsByName('CPF')[0]
var curriculo =  document.getElementsByName('Curriculo')[0]

/* =========================================================Add Event Listeners===========================*/
button_salvar.addEventListener('click', verifica_button)
email.addEventListener('change', verifica_email)
nome.addEventListener('change', verifica_nome)
endereco.addEventListener('change',verifica_endereco)
cpf.addEventListener('change',verifica_cpf)
curriculo.addEventListener('change',verifica_curriculo)