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
}