<?php
class conexion {
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $db_name = "ejemplojava";

    private $conexion;

    public function __construct() {
        $this->conexion = new mysqli($this->servername, $this->username, $this->password, $this->db_name);

        if ($this->conexion->connect_error) {
            die("Conexión fallida: " . $this->conexion->connect_error);
        }
    }

    public function getconexion() {
        return $this->conexion;
    }

    
    public function __destruct() {
        if ($this->conexion) {
            $this->conexion->close();
            
        }
    }
}
