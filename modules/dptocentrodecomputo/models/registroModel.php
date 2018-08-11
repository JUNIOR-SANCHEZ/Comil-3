<?php

class registroModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getDependencia(){
        $stmt = $this->_db->query("SELECT * FROM dependencias");
        $dato = $stmt->fetchAll();
        return $dato;
    }

}