
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
}