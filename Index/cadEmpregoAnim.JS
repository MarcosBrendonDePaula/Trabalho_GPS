
// JS responsável por realizar a animação do cursor pointer de curriculo e a presença do textArea

function pointer1(event){
    const object =  event.currentTarget
    object.style.cursor= "pointer"
    object.style.backgroundColor = "black"
}
function pointer2(event){
    const object = event.currentTarget
    object.style.backgroundColor = "#3a3a27"
}
function show() {
    var text = document.getElementById("curriculoo")
    console.log("chegou na funcao")
    if (text.style.display == "none") {
        text.style.display = "inline-block"
        cudiv.style.color = "white";
        cudiv.style.border = "2px solid black"
        cudiv.style.backgroundColor= "black"
        cudiv.style.padding = "1vh"
        document.getElementById('curriculoo').style.marginBottom = '4vh' 
        document.getElementsByName('Config')[0].style.marginLeft = "28vh"
        document.querySelector('form').style.width = "132vh"
        console.log("é igual a none")
    }
    else {
        text.style.display = "none"
        cudiv.style.color = "white";
        cudiv.style.border = " 2px solid #3a3a27"
        cudiv.style.padding = "1vh 3vh"
        cudiv.style.backgroundColor = "#3a3a27"
        document.getElementsByName('Config')[0].style.marginLeft = "0vh"
        document.querySelector('form').style.width = "138vh"
        console.log("nao é igual a none")
    }
}
var cudiv = document.getElementById("cu")
cudiv.addEventListener("click", show)
cudiv.addEventListener("mouseover",pointer1)
cudiv.addEventListener("mouseout",pointer2)

var enviar =  document.getElementsByName("Enviar")[0]
enviar.addEventListener('mouseover',pointer1)
enviar.addEventListener('mouseout',pointer2)

var salvar =  document.getElementsByName('Salvar')[0]
salvar.addEventListener('mouseover',pointer1)
salvar.addEventListener('mouseout',pointer2)
