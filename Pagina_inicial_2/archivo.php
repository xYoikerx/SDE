<?php
$correoElectronico=$_POST["correoElectronico"];
$comentario=$_POST["comentario"];
$archivo=fopen("Emanuel.txt","a");
fwrite($archivo,"Crreo Electronico" .PHP_EOL);
fwrite($archivo,$correoElectronico .PHP_EOL);
fwrite($archivo,"Comentario:" .PHP_EOL);
fwrite($archivo,$comentario .PHP_EOL);
?>
