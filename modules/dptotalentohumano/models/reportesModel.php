
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
    public function listaReportesId($id){
        $stmt = $this->_db->prepare('CALL solicitudesIngresadasId(:id)');
        $stmt->bindParam(':id',$id,PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result;
    }  
}