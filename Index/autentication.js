const check=()=>{
    const Email=document.getElementById("TxtEmail")
    const BtnLog=document.getElementById("btnlog")
    Email.value="";
    BtnLog.disabled  = true;
    Email.addEventListener('keydown',()=>{
        let conteudo = Email.value.toString();
        if(parseInt(conteudo.indexOf('@'))===-1){
            console.debug("Falta @"+conteudo.indexOf('@'));
            BtnLog.disabled  = true;
        }else
            BtnLog.disabled  = false;
    })
}
check();