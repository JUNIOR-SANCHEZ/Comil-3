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
    public function addSolicitudPermiso($fecha,$th_permiso_fecha_fin,$persona){
        $stmt = $this->_db->prepare('CALL addSolicitudPermiso(:fecha,:th_permiso_fecha_fin,:persona)');
        $stmt->bindParam(':fecha',$fecha,PDO::PARAM_STR);
        $stmt->bindParam(':th_permiso_fecha_fin',$th_permiso_fecha_fin,PDO::PARAM_STR);
        $stmt->bindParam(':persona',$persona,PDO::PARAM_INT);
        $file = $stmt->execute();
        return $file;
    }
}