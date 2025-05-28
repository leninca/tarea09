<?php
require_once "Conexion.php";

// Mostrar errores en desarrollo
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Crear la conexión
$objconexion = new Conexion();
$conn = $objconexion->getConexion();

//////////////////// SELECT ////////////////////


$sql = "SELECT * FROM cliente";
$resultado = $conn->query($sql);

if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "ID: " . $fila['id'] . "<br>";
        echo "Nombre completo: " . $fila['nombre'] . " " . $fila['apellido'] . "<br>";
        echo "DNI: " . $fila['dni'] . "<br>";
        echo "Teléfono: " . $fila['telefono'] . "<br>";
        echo "Correo: " . $fila['correo'] . "<br>";
        echo "Fecha creación: " . $fila['fecha_creado'] . "<br><br>";
    }
} else {
    echo "No hay resultados.<br><br>";
}

//////////////////// INSERT ////////////////////

$sql_insert = "INSERT INTO cliente (nombre, apellido, dni, telefono, correo) 
VALUES ('stacy', 'cammpos', '7163679', '987123564', 'stacy" . rand(100,999) . "@gmail.com')";

if ($conn->query($sql_insert) === TRUE) {
    $ultimo_id = $conn->insert_id;
    echo "Cliente registrado exitosamente. ID nuevo = $ultimo_id <br>";

    //////////////////// UPDATE ////////////////////
/*
    $sql_update = "UPDATE cliente 
                   SET telefono = '929238142', correo = 'stacymar1234@gmail.com' 
                   WHERE id = $ultimo_id";

    if ($conn->query($sql_update) === TRUE) {
        echo " Cliente actualizado correctamente ( ID: $ultimo_id)<br>";
    } else {
        echo " Error al actualizar cliente: " . $conn->error . "<br>";
    }*/

    //////////////////// DELETE ////////////////////

    $sql_delete = "DELETE FROM cliente WHERE id = $ultimo_id";

    if ($conn->query($sql_delete) === TRUE) {
        echo "Cliente eliminado correctamente ( ID: $ultimo_id)<br>";
    } else {
        echo " Error al eliminar cliente: " . $conn->error . "<br>";
    }

} else {
    echo " No se pudo registrar el cliente: " . $conn->error . "<br>";
}
?>
