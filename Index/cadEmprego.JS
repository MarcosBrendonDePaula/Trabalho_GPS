
/*JS responsável por realizar a validação dos campos de INPUTS do cadastro */

var nome = document.getElementById("nomee")
var cpf = document.getElementById("cpff")
var endereco = document.getElementById("enderecoo")
var email = document.getElementById("emaill")
var curriculo = document.getElementById("curriculoo")

function verifica_email(){
    if(email.value.indexOf('@')==-1 || email.value.indexOf('.')==-1)
        return false
    return true
}
function verifica_nome(){
    if(nome.value.length<3)
        return false
    return true
}
function verifica_cpf(){
    if(cpf.value.length!=14)
        return false
    return true
}
function verificador(){
    let retorno = true
    let flag = true
    let resultado = "O(s) Campo(s) de: "
    if(nome.value == ""){
        resultado+="Nome, "
        flag=false
    }
    if(cpf.value == ""){
        resultado+="CPF, "
        flag=false
    }
    if(endereco.value == ""){
        resultado+="Endereço, "
        flag=false
    }
    if(email.value == ""){
        resultado+="Email, "
        flag=false
    }
    if(curriculo.value == ""){
        resultado+="Currículo "
        flag=false
    }
    resultado+="está(estão) incompleto(s)!"

    if(flag==false){
        alert(resultado)
        return false
    }
    else{ //se chegou até aqui é porque todos os campos estão completos
        let aux= "O(s) campo(s): "
        let aux2= true
        let retorno1 = verifica_email() //se caso o email seja valido=> retorno1=true, senão retorno1=false
        let retorno2 = verifica_nome()//se caso o nome seja valido=> retorno2= true, senão retorno2=false
        let retorno3 = verifica_cpf()//se caso o nome seja valido=> retorno3= true, senão retorno3=false
        if(retorno1==false){
            aux+="Email, " 
            aux2= false
        }
        if(retorno2==false){
            aux+="Nome, "
            aux2=false
        }
        if(retorno3==false){
            aux+="CPF "
            aux2=false
        }
        aux+="é(são) inválido(s)!"
        if(aux2){
            alert("Cadastro Efetuado com Sucesso!")
            return true //retorna true se é possivel realizar o cadastro
        }
        alert(aux) 
        return false //retorna false se nao for possivel realizar o cadastro
    }
}

