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
    public function getTipoPermiso(){
        $stmt = $this->_db->query("SELECT * FROM tipo_permisos");
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
    public function addSolicitudPermisoFecha($persona,$motivo,$tipo_permiso,$fecha,$numero){
        $stmt = $this->_db->prepare('CALL addSolicitudPermisoFecha(:persona,:motivo,:tipo_permiso,:fecha,:numero)');
        $stmt->bindParam(':persona',$persona,PDO::PARAM_INT);
        $stmt->bindParam(':motivo',$motivo,PDO::PARAM_INT);
        $stmt->bindParam(':tipo_permiso',$tipo_permiso,PDO::PARAM_INT);
        $stmt->bindParam(':fecha',$fecha,PDO::PARAM_STR);
        $stmt->bindParam(':numero',$numero,PDO::PARAM_INT);
        $file = $stmt->execute();
        return $file;
    }
    public function addSolicitudPermisoHora($persona,$motivo,$tipo_permiso,$fecha,$hora_s,$hora_e){
        $stmt = $this->_db->prepare('CALL addSolicitudPermisoHora(:persona,:motivo,:tipo_permiso,:fecha,:hora_s,:hora_e)');
        $stmt->bindParam(':persona',$persona,PDO::PARAM_INT);
        $stmt->bindParam(':motivo',$motivo,PDO::PARAM_INT);
        $stmt->bindParam(':tipo_permiso',$tipo_permiso,PDO::PARAM_INT);
        $stmt->bindParam(':fecha',$fecha,PDO::PARAM_STR);
        $stmt->bindParam(':hora_s',$hora_s,PDO::PARAM_STR);
        $stmt->bindParam(':hora_e',$hora_e,PDO::PARAM_STR);
        $file = $stmt->execute();
        return $file;
    }
}