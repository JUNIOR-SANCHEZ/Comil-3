<?php

class solicitud_de_permisoController extends dptotalentohumanoController
{
    private $_datos;
    public function __construct(){
        parent::__construct();
        $this->_datos = $this->loadModel('solicitud_de_permiso');
    }
    public function index(){}
    public function dias(){
        $this->_view->setJs(array('inicializador'));
        $this->_view->assign('titulo','Solicitud por dias');
        $this->_view->assign('motivos',$this->_datos->getMotivoPermiso());
        $this->_view->renderizar('nuevo','dptoTalentoHumano');
    }
    public function datosPersonas(){
        echo json_encode("dato enviado");
    }

}