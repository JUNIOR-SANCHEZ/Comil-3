<?php

class indexController extends administracionController{

    public function __construct(){
        parent::__construct();
        
    }

    public function index(){
        $this->_view->assign("mensaje","hola desde el controlador de admministracion");
        $this->_view->renderizar("index");
    }
}