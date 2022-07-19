<?php
include ("conexion.php");

$consulta = mysqli_query($conect, "SELECT * FROM usuario");
            while($resultado = mysqli_fetch_array($consulta)){
                echo var_dump($resultado);
            }