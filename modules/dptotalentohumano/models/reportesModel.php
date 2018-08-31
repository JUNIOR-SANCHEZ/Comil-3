
<?php

class reportesModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function listaReportes(){
        $stmt = $this->_db->query('CALL solicitudesIngresadas()');
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
    public function listaReportesIdFecha($id){
        $stmt = $this->_db->prepare('CALL solicitudesIngresadasIdFecha(:id)');
        $stmt->bindParam(':id',$id,PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }  
    public function listaReportesIdHora($id){
        $stmt = $this->_db->prepare('CALL solicitudesIngresadasIdHora(:id)');
        $stmt->bindParam(':id',$id,PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    } 
    public function listaReportesGeneral(){
        $stmt = $this->_db->query('SELECT * FROM reportegeneral');
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }  
}