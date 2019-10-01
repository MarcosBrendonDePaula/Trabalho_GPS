const Email=document.getElementById("TxtEmail")
const BtnLog=document.getElementById("btnlog")
const TxtSenha=document.getElementById("txtsenha")

const expEmail = new RegExp("^[a-z0-9]+@[a-z]+.com$")
const check=()=>{
    var pas=TxtSenha.value
    var atual = expEmail.test(Email.value)*pas.length
    console.log(Email.value+" "+expEmail.test(Email.value))
    if(atual>=1)
        BtnLog.disabled = false 
}
BtnLog.addEventListener("mouseenter",check)
BtnLog.disabled = true