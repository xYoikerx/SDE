<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Interfaz Usuario Especialista</title>
    <link href="estilos.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../Pagina_inicial_2/estilos/estilos.css">
    <link rel="stylesheet" href="../Pagina_inicial_2/social-bar-gh-pages/main.css">
    <link rel="stylesheet" href="../Pagina_inicial_2/social-bar-gh-pages/font.css">
    <link rel="icon" type="image/png" href="../Pagina_inicial_2/imagenes/logo-pestaña.png">
</head>
<body>
    <header class="contenedorX">
		<div class="contenedorImg">
			<img src="../Pagina_inicial_2/imagenes/logo.png" alt="">
		</div>
			<ul class="contenedorLinks">
				<li class="link"><a href="#">Seccion de preguntas</a></li>  
				<li class="link"><a href="#">Sobre Nosotros</a></li>  
				<li class="link"><a href="#">Miembros</a></li>
				<li class="link"><a href="../Formularios-main-main/Formulario-de-Registro/index.html">Registro</a></li>     
				<li class="link"><a href="../Formularios-main-main/Formulario-de-Login/index.html">Inicio</a></li>
			</ul>   
	</header>
    <br>
    <h1 class="bue" align="center">BIENVENIDO USUARIO ESPECIALISTA</h1>
    <br>
    <section id="especialista">
        <img class="fotoperfil" src="https://d500.epimg.net/cincodias/imagenes/2016/07/04/lifestyle/1467646262_522853_1467646344_noticia_normal.jpg" width="290" height="190" />
        <input type="textarea" class="infper"/>
        <input type="textarea" class="infpro"/>
        <article class="f1" align="center"> <br>foto de perfil</article>
        <article class="f2" align="center"> <br>informaci&oacute;n personal</article>
        <article class="f3" align="center"> <br>informaci&oacute;n profesional</article>
    </section>
    <br>
    <h1 align = center class="ore">ORGANIZADOR DE REUNIONES DEL ESPECIALISTA</h1>
    <br>
    <br>
    <section id="reuesp">
        <br>
<article class="crear" align="center"><br>CREAR UNA NUEVA REUNI&Oacute;N</article>
<article class="historial"  align="center"><br>HISTORIAL DE REUNIONES</article>
                <section class="infc">
                    <br>
                    <article class="formulario" align="center">
                    <form align="center" action="form.php" method="post" onsubmit="return validad()">
                        <label align="center">Nombre de la reunion:</label><input type="text" id="nombre" value=""><br>
                        <label align="center">Fecha de la reunion:</label><input type="date" id="fecha" value=""> <br>
                        <label align="center">Hora de la reunion:</label><input type="time" id="correo" value=""> <br>
                        <label>Link de la reunion:</label><input type="text" id="link"/><br>
                        <br>
                        <a class="enlacereu" href="https://meet.google.com/">Gestionar enlace Google Meet</a>
                        <br>            
                        <input type="submit" value="Crear" id="Enviar" >
                        <input type="reset" value="Borrar Datos" id="Borrar">
                </form>
                  </article>
                </section>
                <section class="infh">
                    <br>
                    <br>
                    <div id="reuhist">
                        <h2 align="center" class="crearnueva">Crear nueva reunion</h2>
                        <h2 align="center" class="proximareu">Historial de reuniones</h2>
                        <article align="center" class="cn1">Primera Reuni&oacute;n.....</article>
                        <article align="center" class="pr1">Proxima Reuni&oacute;n</article>
                        <article align="center" class="cn2">Segunda Reuni&oacute;n.....</article>
                        <article align="center" class="pr2">Proxima Reuni&oacute;n</article>
                        <article align="center" class="cn3">Tercera Reuni&oacute;n.....</article>
                        <article align="center" class="pr3">Proxima Reuni&oacute;n</article>
                        <article align="center" class="cn4">Cuarta Reuni&oacute;n.....</article>
                        <article align="center" class="pr4">Proxima Reuni&oacute;n</article>
                        <article align="center" class="cn5">Quinta Reuni&oacute;n.....</article>
                        <article align="center" class="pr5">Proxima Reuni&oacute;n</article>
                        <a align="center" class="cal" href="https://time.is/es/calendar">Calendario Para Reuniones</a>
                    </div>
                </section>
    </section>
    <div class="social-bar">
		<a href="https://www.facebook.com/DevCode.la" class="icon icon-facebook" target="_blank"></a>
		<a href="https://twitter.com/DevCodela" class="icon icon-twitter" target="_blank"></a>
		<a href="https://www.youtube.com/c/devcodela" class="icon icon-youtube" target="_blank"></a>
		<a href="https://www.instagram.com/devcodela/" class="icon icon-instagram" target="_blank"></a>
	</div>
    <footer>
        
        <div class="container-footer-all">
         
             <div class="container-body">
 
                 <div class="colum1">
                     <h1>Creador de la Página</h1>
 
                     <p> federico lunario</p>
 
                 </div>
 
                 <div class="colum2">
 
                     <h1>Direccion</h1>
                     <img class="ubicacion" src="../Pagina inicial 2.0/imagenes/ubicacion.png" alt="">
                 </div>
 
                 <div class="colum3">
 
                     <h1>Informacion </h1>
                     <div class="row2">
                         <img src="https://www.famousbirthdays.com/faces/faraon-love-shady-image.jpg">
                         <label>+1-829-395-2064</label>
                     </div>
 
                     <div class="row2">
                         <img src="https://zonagallos.com/wp-content/uploads/2020/07/FARAON-LOVE-SHADY.jpg">
                          <label>josephelchumakpro@gmail.com</label>
                     </div>
 
                 </div>
 
             </div>
         
         </div>
         
         <div class="container-footer">
                <div class="footer">
                     <div class="copyright">
                         © 2022 Todos los Derechos Reservados | <a href="https://www.youtube.com/c/KRUesports">KRU Kappa</a>
                     </div>
 
                     <div class="information">
                         <a href="">Informacion Compañia</a> | <a href="">Privacion y Politica</a> | <a href="">Terminos y Condiciones</a>
                     </div>
                 </div>
 
             </div>
         
     </footer>

</body>
</html>