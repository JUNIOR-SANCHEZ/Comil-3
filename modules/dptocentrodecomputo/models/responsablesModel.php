<?php
class responsablesModel extends Model{
    public function __construct(){
        parent::__construct();
    }
    public function getResponsables(){
        $stmt = $this->_db->query("SELECT * FROM responsables_ccp");
        $resp = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $resp;
    }
    public function addResponsables(
        $nombres,
        $apellidos,
        $dependencia,
        $cargos
    ){
        $stmt = $this->_db->prepare(
            "
            CALL addResponsables(
                :nombres,
                :apellidos,
                :dependencia,
                :cargos
            );
            "
        );
        $stmt->bindParam(":nombres",$nombres,PDO::PARAM_STR);
        $stmt->bindParam(":apellidos",$apellidos,PDO::PARAM_STR);
        $stmt->bindParam(":dependencia",$dependencia,PDO::PARAM_STR);
        $stmt->bindParam(":cargos",$cargos,PDO::PARAM_STR);
        return $stmt->execute();
    }
}