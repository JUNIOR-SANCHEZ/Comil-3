<?php

class solicitud_de_permisoModel extends Model 
{
    public function __construct(){
        parent::__construct();
    }

    public function getMotivoPermiso(){
        $stmt = $this->_db->query("SELECT * FROM motivo_permisos");
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $data;
    }
}