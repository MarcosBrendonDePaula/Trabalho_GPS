const activeB=()=>{
    const burger=document.querySelector('.x')
    const nav = document.querySelector('.btns')
    burger.addEventListener('click',()=>{
        burger.classList.toggle("burger-active")
        nav.classList.toggle("btns-show")
    })
}
activeB()