<?php
class registroController extends dptotalentohumanoController
{

    private $_registro;
    public function __construct()
    {
        parent::__construct();
        $this->_view->setTemplate("departamentos");
        $this->_registro = $this->loadModel("registro");
    }
    
    public function index(){
        if(!$this->_acl->permiso("admin_dptoTalHum")) $this->redireccionar('usuarios/login');
        $this->_view->setJs(array("llenarSelect","eventos"));
        $this->_view->assign("titulo",Session::get("rol_name"));
        $this->_view->renderizar('index',"dptoTalentoHumano");
        
    }

    public function obtenerGenero(){
       if(!$this->_acl->permiso("admin_dptoTalHum")) $this->redireccionar('usuarios/login');
          echo json_encode($this->_registro->getGenero());
    }
    public function obtenerTipoSangre(){
        if(!$this->_acl->permiso("admin_dptoTalHum")) $this->redireccionar('usuarios/login');
        echo json_encode($this->_registro->getTipoSangre());
    }
    public function obtenerEstadoCivil(){
        if(!$this->_acl->permiso("admin_dptoTalHum")) $this->redireccionar('usuarios/login');
        echo json_encode($this->_registro->getEstadosCiviles());
    }
    public function obtenerCargo(){
        if(!$this->_acl->permiso("admin_dptoTalHum")) $this->redireccionar('usuarios/login');
        echo json_encode($this->_registro->getCargo());
    }
    public function agregarCargo(){
        echo json_encode($this->_registro->addCargo($this->getText("dato")));

        // echo json_encode($this->getText("dato"));
    }
}