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
    public function getPersonal($dato=false)
    {
        ($dato) ? $dato = $dato : $dato = '';
        // echo $dato;exit;
        $stmt = $this->_db->prepare("CALL getPersonalDatosBasicos(:palabra);");
        $stmt->bindParam(':palabra',$dato,PDO::PARAM_STR);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $data;
    }
    public function addSolicitudPermiso($fecha,$dias,$persona){
        $stmt = $this->_db->prepare('CALL addSolicitudPermiso(:fecha,:dias,:persona)');
        $stmt->bindParam(':fecha',$fecha,PDO::PARAM_STR);
        $stmt->bindParam(':dias',$dias,PDO::PARAM_STR);
        $stmt->bindParam(':persona',$persona,PDO::PARAM_STR);
        $file = $stmt->execute();
        return $file;
    }
}