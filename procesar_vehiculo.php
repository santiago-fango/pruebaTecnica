<?php
include ("conexion.php");
$placa = $_POST['placa'];
$color = $_POST['color'];
$marca = $_POST['marca'];
$tipo_vehiculo = $_POST['tipo_vehiculo'];
$propietario = $_POST['propietario_id'];
$conductor = $_POST['conductor_id'];


$conect->query("INSERT INTO vehiculos (placa, color, marca, tipo_vehiculo, propietario_id, conductor_id ) VALUES ('$placa', '$color', '$marca', '$tipo_vehiculo', '$conductor', '$propietario')");

mysqli_close($conect);
