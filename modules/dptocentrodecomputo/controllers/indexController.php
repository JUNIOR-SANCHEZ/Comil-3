<?php

class indexController extends dptocentrodecomputoController
{
    public function __construct()
    {
        parent::__construct();
        
    }
    public function index(){

        $this->_view->assign("titulo","Centro de Computo");
        $this->_view->assign("usuario",Session::get("usuario"));
        $this->_view->renderizar("index","dptoCentroDeComputo");
    }
}