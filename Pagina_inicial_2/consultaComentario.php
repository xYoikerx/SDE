<?php

$resultado = fopen("Emanuel.txt","r") or die("no se pudo encontrar el comentario");
while(!feof($resultado)){
    $leer = fgets($resultado); 
    $ver = n12br($leer)
    echo $ver;
}

?>