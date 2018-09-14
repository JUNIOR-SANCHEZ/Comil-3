<?php

class registroModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getDependencia(){
        $stmt = $this->_db->query("SELECT * FROM dependencias");
        $dato = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $dato;
    }
    public function getPersonal(){
        $stmt = $this->_db->query("SELECT * FROM personal");
        $dato = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $dato;
    }
    public function getCargosFunciones(){
        $stmt = $this->_db->query("SELECT * FROM cargos_funciones_personal");
        $dato = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $dato;
    }
    public function getMarcasEquipos(){
        $stmt = $this->_db->query("SELECT * FROM marcas");
        $dato = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $dato;
    }
    
    public function getResponsables(){
        $stmt = $this->_db->query("SELECT * FROM responsables_ccp");
        $resp = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $resp;
    }


}