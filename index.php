<html>
<body>

    <h1>Registre nuevo conductor</h1>
    <form action="procesar_conductor.php" method="POST">
        <p><input type="number" name="cedula" placeholder="Cedula"><br></p>
        <p><input type="text" name="primer_nombre" placeholder="Primer nombre"><br></p>
        <p><input type="text" name="segundo_nombre" placeholder="Segundo nombre"><br></p>
        <p><input type="text" name="apellidos" placeholder="Apellidos"><br></p>
        <p><input type="text" name="direccion" placeholder="Direccion"><br></p>
        <p><input type="text" name="ciudad" placeholder="Ciudad"><br></p>
        <p><input type="number" name="telefono" placeholder="Telefono"><br></p>
        
        <input type="submit" value="Enviar" name="enviar_conductor">
    </form>

    <h1>Registre nuevo propietario</h1>
    <form action="procesar_propietario.php" method="POST">
        <p><input type="number" name="cedula" placeholder="Cedula"><br></p>
        <p><input type="text" name="primer_nombre" placeholder="Primer nombre"><br></p>
        <p><input type="text" name="segundo_nombre" placeholder="Segundo nombre"><br></p>
        <p><input type="text" name="apellidos" placeholder="Apellidos"><br></p>
        <p><input type="text" name="direccion" placeholder="Direccion"><br></p>
        <p><input type="text" name="ciudad" placeholder="Ciudad"><br></p>
        <p><input type="number" name="telefono" placeholder="Telefono"><br></p>
        
        <input type="submit" value="Enviar" name="enviar_propietario">
    </form>

    <h1>Registre nuevo vehiculo</h1>
    <form action="procesar_vehiculo.php" method="POST">
        <p><input type="text" name="placa" placeholder="Placa"><br></p>
        <p><input type="text" name="color" placeholder="Color"><br></p>
        <p><input type="text" name="marca" placeholder="Marca"><br></p>
        <p><input type="text" name="tipo_vehiculo" placeholder="Particular o Publico"><br></p>
        <p><input type="number" name="conductor_cedula" placeholder="Cedula Conductor"><br></p>
        <p><input type="number" name="propietario_cedula" placeholder="Cedula Propietario"><br></p>
        
        <input type="submit" value="Enviar" name="enviar_vehiculo">

    </form>
    <h1>Consultar</h1>
    <form action="consultar.php" method="POST">
        <input type="submit" value="Consultar" name="con">
    </from>


    
   <?php
        if(isset($_POST['enviar_conductor'])){
            include ("conexion.php");
            include ("procesar_conductor.php");
            
        }else if(isset($_POST['enviar_vehiculo'])){
            include ("conexion.php");
            include ("procesar_vehiculo.php");
        }else if(isset($_POST['enviar_propietario'])){
            include ("conexion.php");
            include ("procesar_propietario.php");
        }else if(isset($_POST['con'])){
            include ("conexion.php");
            include ("consultar.php");
        }

   ?> 
</html>
