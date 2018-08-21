<?php
class registroModel extends Model{
    public function __construct(){
        parent::__construct();
    }

    public function getGenero(){
        $stmt = $this->_db->query("SELECT * FROM generos;");
        $datos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $datos;
    }
    public function getTipoSangre(){
        $stmt = $this->_db->query("SELECT * FROM tipos_sangre");
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $data;
    }
    public function getEstadosCiviles(){
        $stmt=$this->_db->query("SELECT * FROM estados_civiles");
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $data;
    }
    public function getCargo(){
        $stmt = $this->_db->query("SELECT * FROM cargos_funciones_personal");
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $data;
    }
    public function addCargo($dato){
        $stmt = $this->_db->prepare("INSERT INTO cargos_funciones_personal VALUES (NULL,:dato)");
        $stmt->bindParam(":dato",$dato,PDO::PARAM_STR);
        $file = $stmt->execute();
        return $file;
    }
    public function addPersonal(
        $nombre,$apellido,$cedula,
        $direccion,$email,$email_institucional,
        $telefono,$fecha_nacimiento,$tipo_sangre,
        $genero,$estado_civil,$estado_laboral
        )
    {
        $stmt = $this->_db->prepare("CALL addPersonal(
        :nombre,:apellido,:cedula,:direccion,:email,
        :email_institucional,:telefono,:fecha_nacimiento,
        :tipo_sangre,:genero,:estado_civil,:estado_laboral
        )");
        $stmt->bindParam(":nombre",$nombre,PDO::PARAM_STR);
        $stmt->bindParam(":apellido",$apellido,PDO::PARAM_STR);
        $stmt->bindParam(":cedula",$cedula,PDO::PARAM_STR);
        $stmt->bindParam(":direccion",$direccion,PDO::PARAM_STR);
        $stmt->bindParam(":email",$email,PDO::PARAM_STR);
        $stmt->bindParam(":email_institucional",$email_institucional,PDO::PARAM_STR);
        $stmt->bindParam(":telefono",$telefono,PDO::PARAM_STR);
        $stmt->bindParam(":fecha_nacimiento",$fecha_nacimiento,PDO::PARAM_STR);
        $stmt->bindParam(":tipo_sangre",$tipo_sangre,PDO::PARAM_INT);
        $stmt->bindParam(":genero",$genero,PDO::PARAM_INT);
        $stmt->bindParam(":estado_civil",$estado_civil,PDO::PARAM_INT);
        $stmt->bindParam(":estado_laboral",$estado_laboral,PDO::PARAM_INT);
        $file = $stmt->execute();
        return $file;
    }
}