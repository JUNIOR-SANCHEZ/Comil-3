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
    public function addSolicitudPermiso($fecha,$num,$persona,$motivo,$tipo_solicitud,$tipo_permiso){
        $stmt = $this->_db->prepare('CALL addSolicitudPermiso(:fecha,:num,:persona,:motivo,:tipo_solicitud,:tipo_permiso)');
        $stmt->bindParam(':fecha',$fecha,PDO::PARAM_STR);
        $stmt->bindParam(':num',$num,PDO::PARAM_STR);
        $stmt->bindParam(':persona',$persona,PDO::PARAM_INT);
        $stmt->bindParam(':motivo',$motivo,PDO::PARAM_INT);
        $stmt->bindParam(':tipo_solicitud',$tipo_solicitud,PDO::PARAM_STR);
        $stmt->bindParam(':tipo_permiso',$tipo_permiso,PDO::PARAM_INT);
        $file = $stmt->execute();
        return $file;
    }
}