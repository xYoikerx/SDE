<?php
    $correoElectronico=$_POST["correoElectronico"];
    $comentario=$_POST["comentario"];
    $archivo=fopen("Emanuel.txt","a");
    fwrite($archivo,"<div style='background-color:#fff;width:40%;margin: 50px auto;display:flex;border-radius: 15px;' class='cajaComentarios'>
    <div class='contenedorFotoPerfil'>
        <img style='height: 80px;width: 80px;border-radius:40px;margin: 20px 20px;object-fit:cover;' class='fotoPerfil' src='../seccionComentarios/imagenes/null.jpg' alt=''>
    </div>
    <div class='comentarioContenedor'>
        <h3 style='color: #1db9b4;' class='correoElectronico'>
            $correoElectronico
        </h3>
        <article style='margin: 10 20px;width: 97%;border-radius: 15px;background-color: #f9f9f9' class='comentario'>
            $comentario
        </article>
    </div>
</div>"); //div contenedor
    header("Location:../seccionComentarios/consultaComentario.php".PHP_EOL);
?>

