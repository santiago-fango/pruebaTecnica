<?php
include ("conexion.php");
$cedula = $_POST['cedula'];
$primer_nombre = $_POST['primer_nombre'];
$segundo_nombre = $_POST['segundo_nombre'];
$apellidos = $_POST['apellidos'];
$direccion = $_POST['direccion'];
$ciudad = $_POST['ciudad'];
$telefono = $_POST['telefono'];

$conect->query("INSERT INTO propietario (cedula, primer_nombre, segundo_nombre, apellidos, direccion, ciudad, telefono) VALUES ('$cedula', '$primer_nombre', '$segundo_nombre', '$apellidos', '$direccion', '$ciudad', '$telefono')");

mysqli_close($conect);
