<?php

class indexController extends administracionController{

    public function __construct(){
        parent::__construct();
        
    }

    public function index(){
        $this->_view->assign("mensaje","");
        $this->_view->renderizar("index");
    }
}