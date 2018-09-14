<?php

class registroController extends dptocentrodecomputoController
{
    private $_registro;
    public function __construct()
    {
        parent::__construct();
        $this->_registro = $this->loadModel("registro");
    }
    public function index(){
        $ARRAY =array("nombres_apellidos"=>"juan");
        $this->_view->setJS(array("peticionesAjax"));
        $this->_view->assign("titulo","hoja de vida");
        $this->_view->assign("_dependencia",$this->_registro->getDependencia());
        $this->_view->assign("_personal",$this->_registro->getPersonal());
        $this->_view->assign("_cargos_funciones",$this->_registro->getCargosFunciones());
        $this->_view->assign("_marcas_equipo",array());
        $this->_view->assign("_responsables",$this->_registro->getResponsables());
        $this->_view->renderizar("index","dptoCentroDeComputo");
    }
    
   
}