<?php
include ("conexion.php");

$resultado = mysqli_query($conect, "SELECT * FROM vehiculos");
            while($consulta = mysqli_fetch_array($resultado)){
                echo "Placa del vehiculo: ".$consulta['placa'];
                echo "<br>";
                echo "Marca del vehiculo: ".$consulta['marca'];
                echo "<br>";
                echo "Cedula del Propietario del vehiculo: ".$consulta['propietario_cedula'];
                echo "<br>";
                echo "Cedula del Conductor del vehiculo: ".$consulta['conductor_cedula'];
                echo "<br>";
                echo "-------------------------------<br>";
            }
            