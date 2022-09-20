<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Psico.Bo</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600&family=Noto+Sans+JP&display=swap" rel="stylesheet"> 
	<link rel="stylesheet" href="../seccionComentarios/social-bar-gh-pages/main.css">
	<link rel="stylesheet" href="../seccionComentarios/social-bar-gh-pages/font.css">
	<link rel="icon" type="image/png" href="../seccionComentarios/imagenes/logo-pestaña.png">
	<link rel="stylesheet" href="../Pagina_inicial_2/estilos/normalize.css">
	<link rel="stylesheet" href="../seccionComentarios/estilos/estilos.css">
	<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap" rel="stylesheet">
</head>
<body>
    <header class="contenedorX">
		<div class="contenedorImg">
			<img src="../Pagina_inicial_2/imagenes/logo.png" alt="">
		</div>
			<ul class="contenedorLinks">
				<li class="link"><a href="http://localhost/SDE/seccionComentarios/consultaComentario.php">Seccion de preguntas</a></li>  
				<li class="link"><a href="../misionVision/index.php">Sobre Nosotros</a></li>  
				<li class="link"><a href="../formularios_con_php/Formulario_de_Registro/index.php">Registro</a></li>     
				<li class="link"><a href="../formularios_con_php/Formulario_de_Login/index.php">Inicio</a></li>
                <li class="link"><a href="../maquetacion_Juan_Pablo/index.php">Especialistas</a></li>
                <li class="link"><a href="http://localhost/SDE/Miembros\index.php">Miembros</a></li>
                <li class="link"><a href=".../Pagina_inicial_2/index.php">Pagina inicial</a></li>
			</ul>   
    </header>
    <?php
        $resultado = fopen("Emanuel.txt","r") or die("no se pudo encontrar el comentario");
        while(!feof($resultado)){
            $leer = fgets($resultado); 
            echo $leer;
        }
    ?>    
    <footer>
        
        <div class="container-footer-all">
            <div class="container-body">
                <div class="colum2">
                    <h1>Dirección</h1>
					<iframe class="ubicacion" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3807.7768542387407!2d-66.1461316845071!3d-17.37446736842344!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93e3741db0eae1a3%3A0x4a22fadbab2f457a!2sPedro%20Poveda!5e0!3m2!1ses!2sbo!4v1662391859889!5m2!1ses!2sbo" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="colum1">
                    <h1 >Comentario</h1>
					<form id="form" class="form-com" action="../seccionComentarios/archivo.php" method="post">
						<input id="usuariocom" class="controls" type="text" name="correoElectronico" value="" placeholder="Usuario">
						<br>
						<textarea id="comentario" class="controls" type="text" name="comentario" value="" placeholder="Comentario"></textarea>	
						<br>
						<input id="btn-com" class="buttons" type="submit" name="" value="Enviar">
					</form>
                </div>
                
                <div class="colum3">
                    <h1>Número de contacto </h1>
                    <div class="row2">
                        <img src="https://cdn-icons-png.flaticon.com/512/25/25377.png">
                        <label>+1-829-395-2064</label>
                    </div>
                    <br>
                    <h1>Correo electrónico </h1>
                    <div class="row2">
                        <img src="https://cdn-icons-png.flaticon.com/512/95/95645.png">
                        <label>josephelchumakpro@gmail.com</label>
                    </div>
                    <h1>Creador de la Página</h1>
                    <div class="row2">
                        <img src="https://cdn-icons-png.flaticon.com/512/3128/3128528.png">
                        <label>SDE Corporation</label>
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
    <script src="../seccionComentarios/js/validacion.js"></script>
</body>
</html>


