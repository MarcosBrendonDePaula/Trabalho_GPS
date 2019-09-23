
/*JS responsável por realizar a validação dos campos de INPUTS do cadastro */


function verifica_email(form){
    if(form.Email.value.indexOf('@')==-1 || form.Email.value.indexOf('.')==-1)
        return false
    return true
}
function verifica_nome(form){
    if(form.Nome.value.length<3)
        return false
    return true
}
function verifica_cpf(form){
    if(form.CPF.value.length!=14)
        return false
    return true
}
function verificador(form){
    let retorno = true
    let flag = true
    let resultado = "O(s) Campo(s) de: "
    if(form.Nome.value == ""){
        resultado+="Nome, "
        flag=false
    }
    if(form.CPF.value == ""){
        resultado+="CPF, "
        flag=false
    }
    if(form.Endereco.value == ""){
        resultado+="Endereço, "
        flag=false
    }
    
    if(form.Email.value == ""){
        resultado+="Email, "
        flag=false
    }
    if(form.Curriculo.value == ""){
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
        let retorno1 = verifica_email(form) //se caso o email seja valido=> retorno1=true, senão retorno1=false
        let retorno2 = verifica_nome(form)//se caso o nome seja valido=> retorno2= true, senão retorno2=false
        let retorno3 = verifica_cpf(form)//se caso o nome seja valido=> retorno3= true, senão retorno3=false
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

