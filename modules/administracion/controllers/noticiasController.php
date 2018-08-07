<?php

class noticiasController extends administracionController{

    public function __construct(){
        parent::__construct();
        
    }

    public function index(){
        $this->_view->renderizar("index");
    }
}