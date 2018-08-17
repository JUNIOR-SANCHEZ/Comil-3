<?php
class registroController extends dptotalentohumanoController
{

    public function __construct()
    {
        parent::__construct();
        $this->_view->setTemplate("departamentos");
        if(!$this->_acl->permiso("admin_dptoTalHum")){
            $this->redireccionar("usuarios/login");
        }
    }
    
    public function index(){
        $this->_view->setJs(array("llenarSelect"));
        $this->_view->assign("titulo",Session::get("rol_name"));
        $this->_view->renderizar('index',"dptoTalentoHumano");
        
    }
}