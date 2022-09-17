const ham = document.querySelector('.ham');
const enlaces = document.querySelector('#contenedorLinks');
ham.addEventListener('click', () => {
    enlaces.classList.toggle('activo');
});