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
    public function getCargos_Funciones(){
        $stmt = $this->_db->query("SELECT * FROM cargos_funciones");
        $dato = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $dato;
    }

}