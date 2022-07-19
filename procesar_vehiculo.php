<?php
include ("conexion.php");
$placa = $_POST['placa'];
$color = $_POST['color'];
$marca = $_POST['marca'];
$tipo_vehiculo = $_POST['tipo_vehiculo'];
$propietario = $_POST['propietario_cedula'];
$conductor = $_POST['conductor_cedula'];


$conect->query("INSERT INTO vehiculos (placa, color, marca, tipo_vehiculo, propietario_cedula, conductor_cedula ) VALUES ('$placa', '$color', '$marca', '$tipo_vehiculo', '$propietario', '$conductor')");

mysqli_close($conect);
