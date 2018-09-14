<?php

class otrosModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function viewMarcas($table){
        $stmt = $this->_db->prepare("SELECT * FROM  ".$table." ;");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function addMarcas($marca,$table){
        $stmt = $this->_db->prepare("INSERT INTO ".$table." VALUES (NULL, :marca)");
        $stmt->bindParam(":marca",$marca,PDO::PARAM_STR);
        return $stmt->execute();
    }
    public function addProcesador($marca,$modelo,$velocidad){
        $stmt = $this->_db->prepare("CALL addProcesador(:marca,:modelo,:velocidad);");
        $stmt->bindParam(":marca",$marca,PDO::PARAM_STR);
        $stmt->bindParam(":modelo",$modelo,PDO::PARAM_STR);
        $stmt->bindParam(":velocidad",$velocidad);
        return $stmt->execute();
    }
    public function addPc(string $nombre, string $serie, int $marca, int $modelo)
    {
       $stmt = $this->_db->prepare('
        CALL addPc(
            :nombre,
            :serie,
            :marca,
            :modelo
        );
       ');
       $stmt->bindParam(':nombre',$nombre,PDO::PARAM_STR);
       $stmt->bindParam(':serie',$serie,PDO::PARAM_STR);
       $stmt->bindParam(':marca',$marca,PDO::PARAM_STR);
       $stmt->bindParam(':modelo',$modelo,PDO::PARAM_STR);

       return $stmt->execute();

    }
    
}