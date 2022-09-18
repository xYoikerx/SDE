const correoElectronico = document.getElementById('usuariocom');
const comentario = document.getElementById('comentario');
const formulario = document.getElementById('form')
const expresiones={
    email:/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
};
formulario.addEventListener('submit',()=>{
    if(expresiones.email.test(correoElectronico.value)==false){
        alert('Correo electronico no valido');
        correoElectronico.focus();
    }
    if(comentario.value.length>250){
        alert('Comentario muy largo')
    }
})