<?php

class indexController extends dptocentrodecomputoController
{
    public function __construct()
    {
        parent::__construct();
        $this->_view->setTemplate("departamentos");
    }
    public function index(){
        $this->_view->assign("titulo","Centro de Computo");
        $this->_view->renderizar("index","centrodecomputo");
    }
}