
// JS responsável por realizar a animação do cursor pointer de curriculo e a presença do textArea

function pointer1(){
    cudiv.style.cursor= "pointer"
    cudiv.style.backgroundColor = "black"
}
function pointer2(){
    cudiv.style.backgroundColor = "#3a3a27"
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
        console.log("é igual a none")
    }
    else {
        text.style.display = "none"
        cudiv.style.color = "white";
        cudiv.style.border = " 2px solid #3a3a27"
        cudiv.style.padding = "1vh 3vh"
        cudiv.style.backgroundColor = "#3a3a27"
        console.log("nao é igual a none")
    }
}
var cudiv = document.getElementById("cu")
cudiv.addEventListener("click", show)
cudiv.addEventListener("mouseover",pointer1)
cudiv.addEventListener("mouseout",pointer2)

var salvar =  document.getElementsByName("Enviar")[0]
salvar.addEventListener("mouseover",()=>{
    salvar.style.cursor = "pointer"
    salvar.style.backgroundColor = "black"
})
salvar.addEventListener("mouseout",()=>{
    salvar.style.backgroundColor = "#3a3a27"
})