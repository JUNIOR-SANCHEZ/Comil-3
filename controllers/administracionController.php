<?php

class administracionController extends Controller{
    public function __construct(){
        parent::__construct();
        $this->_view->setTemplate("administracion");
    }

    public function index(){}
}