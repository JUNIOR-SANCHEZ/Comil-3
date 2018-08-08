<?php

class indexController extends dptotalentohumanoController
{

    public function __construct()
    {
        parent::__construct();
        $this->_view->setTemplate("dptotalentohumano");
    }
    
    public function index(){
        $this->_view->assign("titulo","Dept.TalentoHumano");
        $this->_view->renderizar('index',"dptoTalentoHumano");
        
    }
}